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
Client object for interacting with AWS ImportExport service.

AWS Import/Export Service AWS Import/Export accelerates transferring large amounts of data between the AWS cloud and portable storage devices that you mail to us. AWS Import/Export transfers data directly onto and off of your storage devices using Amazon's high-speed internal network and bypassing the Internet. For large data sets, AWS Import/Export is often faster than Internet transfer and more cost effective than upgrading your connectivity.
*/
public struct ImportExport {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the ImportExport client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: nil,
            partition: partition,
            service: "importexport",
            serviceProtocol: .query,
            apiVersion: "2010-06-01",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "importexport.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1)],
            possibleErrorTypes: [ImportExportErrorType.self]
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.
    public func cancelJob(_ input: CancelJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelJobOutput> {
        return client.execute(operation: "CancelJob", path: "/?Operation=CancelJob", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.
    public func createJob(_ input: CreateJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateJobOutput> {
        return client.execute(operation: "CreateJob", path: "/?Operation=CreateJob", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.
    public func getShippingLabel(_ input: GetShippingLabelInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetShippingLabelOutput> {
        return client.execute(operation: "GetShippingLabel", path: "/?Operation=GetShippingLabel", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.
    public func getStatus(_ input: GetStatusInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStatusOutput> {
        return client.execute(operation: "GetStatus", path: "/?Operation=GetStatus", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
    public func listJobs(_ input: ListJobsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsOutput> {
        return client.execute(operation: "ListJobs", path: "/?Operation=ListJobs", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file. The manifest file attached to this request replaces the original manifest file. You can only use the operation after a CreateJob request but before the data transfer starts and you can only use it on jobs you own.
    public func updateJob(_ input: UpdateJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateJobOutput> {
        return client.execute(operation: "UpdateJob", path: "/?Operation=UpdateJob", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
