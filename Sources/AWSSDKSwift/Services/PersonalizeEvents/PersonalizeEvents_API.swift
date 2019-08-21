// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

public struct PersonalizeEvents {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "personalize-events",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-03-22",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [PersonalizeEventsErrorType.self]
        )
    }

    ///  Records user interaction event data.
    @discardableResult public func putEvents(_ input: PutEventsRequest) throws -> Future<Void> {
        return try client.send(operation: "PutEvents", path: "/events", httpMethod: "POST", input: input)
    }
}
