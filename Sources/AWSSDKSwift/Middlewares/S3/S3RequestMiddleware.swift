import Foundation
import AWSSDKSwiftCore

public struct S3RequestMiddleware: AWSServiceMiddleware {

    public init () {}
    
    /// edit request before sending to S3
    public func chain(request: AWSRequest) throws -> AWSRequest {
        var request = request

        /// process URL into form ${bucket}.s3.amazon.com
        var paths = request.url.path.components(separatedBy: "/").filter({ $0 != "" })
        if paths.count > 0 {
            switch request.httpMethod.lowercased() {
            case "get":
                let query = request.url.query != nil ? "?\(request.url.query!)" : ""
                let domain: String
                if let host = request.url.host, host.contains("amazonaws.com") {
                    domain = host
                } else {
                    let port = request.url.port == nil ? "" : ":\(request.url.port!)"
                    domain = request.url.host!+port
                }
                request.url = URL(string: "\(request.url.scheme ?? "https")://\(paths.removeFirst()).\(domain)/\(paths.joined(separator: "/"))\(query)")!
            default:
                guard let host = request.url.host, host.contains("amazonaws.com") else { break }
                var pathes = request.url.path.components(separatedBy: "/")
                if pathes.count > 1 {
                    _ = pathes.removeFirst() // /
                    let bucket = pathes.removeFirst() // bucket
                    var urlString: String
                    if let firstHostComponent = host.components(separatedBy: ".").first, bucket == firstHostComponent {
                        // Bucket name is part of host. No need to append bucket
                        urlString = "https://\(host)/\(pathes.joined(separator: "/"))"
                    } else {
                        urlString = "https://\(bucket).\(host)/\(pathes.joined(separator: "/"))"
                    }
                    if let query = request.url.query {
                        urlString += "?\(query)"
                    }
                    request.url = URL(string: urlString)!
                }
            }
        }
        
        // add metadata to request
        if let metadata = request.httpHeaders["x-amz-meta-"] as? [String: String] {
            for (key,value) in metadata {
                // metadata keys have to be lowercase or signing fails
                request.httpHeaders["x-amz-meta-\(key.lowercased())"] = value
            }
            request.httpHeaders["x-amz-meta-"] = nil
        }
        
        switch request.operation {
        // fixup CreateBucket to include location
        case "CreateBucket":
            var xml = ""
            if request.region != .useast1 {
                xml += "<CreateBucketConfiguration xmlns=\"http://s3.amazonaws.com/doc/2006-03-01/\">"
                xml += "<LocationConstraint>"
                xml += request.region.rawValue
                xml += "</LocationConstraint>"
                xml += "</CreateBucketConfiguration>"
            }
            request.body = .text(xml)

        default:
            break
        }

        // if request has a body, calculate the MD5 for that body
        if let data = request.body.asData() {
            let encoded = Data(md5(data)).base64EncodedString()
            request.addValue(encoded, forHTTPHeaderField: "Content-MD5")
        }

        return request
    }
    
    /// Edit responses coming back from S3
    public func chain(response: AWSResponse) throws -> AWSResponse {
        var response = response
        
        switch response.body {
        case .xml(let element):
            // GetBucketLocation comes back without a containing xml element
            if element.name == "LocationConstraint" {
                let parentElement = XML.Element(name: "BucketLocation")
                parentElement.addChild(element)
                response.body = .xml(parentElement)
            }
        default:
            // convert x-amz-meta-* header values into a dictionary, which we add as a "x-amz-meta-" header. This is processed by AWSClient to fill metadata values in GetObject and HeadObject
            var metadata : [String: String] = [:]
            for (key, value) in response.headers {
                if key.hasPrefix("x-amz-meta-"), let value = value as? String {
                    let keyWithoutPrefix = key.dropFirst("x-amz-meta-".count)
                    metadata[String(keyWithoutPrefix)] = value
                }
            }
            if !metadata.isEmpty {
                response.headers["x-amz-meta-"] = metadata
            }
        }
        return response
    }
}
