//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS MediaPackageVod service.

AWS Elemental MediaPackage VOD
*/
public struct MediaPackageVod {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the MediaPackageVod client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "mediapackage-vod",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-07",
            endpoint: endpoint,
            possibleErrorTypes: [MediaPackageVodErrorType.self]
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates a new MediaPackage VOD Asset resource.
    public func createAsset(_ input: CreateAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetResponse> {
        return client.execute(operation: "CreateAsset", path: "/assets", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new MediaPackage VOD PackagingConfiguration resource.
    public func createPackagingConfiguration(_ input: CreatePackagingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePackagingConfigurationResponse> {
        return client.execute(operation: "CreatePackagingConfiguration", path: "/packaging_configurations", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new MediaPackage VOD PackagingGroup resource.
    public func createPackagingGroup(_ input: CreatePackagingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePackagingGroupResponse> {
        return client.execute(operation: "CreatePackagingGroup", path: "/packaging_groups", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an existing MediaPackage VOD Asset resource.
    public func deleteAsset(_ input: DeleteAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssetResponse> {
        return client.execute(operation: "DeleteAsset", path: "/assets/{id}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a MediaPackage VOD PackagingConfiguration resource.
    public func deletePackagingConfiguration(_ input: DeletePackagingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePackagingConfigurationResponse> {
        return client.execute(operation: "DeletePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a MediaPackage VOD PackagingGroup resource.
    public func deletePackagingGroup(_ input: DeletePackagingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePackagingGroupResponse> {
        return client.execute(operation: "DeletePackagingGroup", path: "/packaging_groups/{id}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD Asset resource.
    public func describeAsset(_ input: DescribeAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetResponse> {
        return client.execute(operation: "DescribeAsset", path: "/assets/{id}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    public func describePackagingConfiguration(_ input: DescribePackagingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagingConfigurationResponse> {
        return client.execute(operation: "DescribePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD PackagingGroup resource.
    public func describePackagingGroup(_ input: DescribePackagingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagingGroupResponse> {
        return client.execute(operation: "DescribePackagingGroup", path: "/packaging_groups/{id}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD Asset resources.
    public func listAssets(_ input: ListAssetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssetsResponse> {
        return client.execute(operation: "ListAssets", path: "/assets", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurations(_ input: ListPackagingConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackagingConfigurationsResponse> {
        return client.execute(operation: "ListPackagingConfigurations", path: "/packaging_configurations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroups(_ input: ListPackagingGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackagingGroupsResponse> {
        return client.execute(operation: "ListPackagingGroups", path: "/packaging_groups", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
