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

import NIO

//MARK: Paginators

extension KinesisVideo {

    ///  Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.
    public func listSignalingChannelsPaginator(_ input: ListSignalingChannelsInput, onPage: @escaping (ListSignalingChannelsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSignalingChannels, tokenKey: \ListSignalingChannelsOutput.nextToken, onPage: onPage)
    }

    ///  Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition. 
    public func listStreamsPaginator(_ input: ListStreamsInput, onPage: @escaping (ListStreamsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listStreams, tokenKey: \ListStreamsOutput.nextToken, onPage: onPage)
    }

}

extension KinesisVideo.ListSignalingChannelsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KinesisVideo.ListSignalingChannelsInput {
        return .init(
            channelNameCondition: self.channelNameCondition, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension KinesisVideo.ListStreamsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KinesisVideo.ListStreamsInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            streamNameCondition: self.streamNameCondition
        )

    }
}


