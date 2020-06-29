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
Client object for interacting with AWS TranscribeStreamingService service.

Operations and objects for transcribing streaming speech to text.
*/
public struct TranscribeStreamingService {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the TranscribeStreamingService client
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
            service: "transcribestreaming",
            signingName: "transcribe",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            possibleErrorTypes: [TranscribeStreamingServiceErrorType.self]
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls
}
