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

extension FSx {

    ///  Returns the description of specific Amazon FSx for Windows File Server backups, if a BackupIds value is provided for that backup. Otherwise, it returns all backups owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all backups, you can optionally specify the MaxResults parameter to limit the number of backups in a response. If more backups remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your backups. DescribeBackups is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:   The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.   The order of backups returned in the response of one DescribeBackups call and the order of backups returned across the responses of a multi-call iteration is unspecified.  
    public func describeBackupsPaginator(_ input: DescribeBackupsRequest, onPage: @escaping (DescribeBackupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBackups, tokenKey: \DescribeBackupsResponse.nextToken, onPage: onPage)
    }

    ///  Returns the description of specific Amazon FSx for Lustre data repository tasks, if one or more TaskIds values are provided in the request, or if filters are used in the request. You can use filters to narrow the response to include just tasks for specific file systems, or tasks in a specific lifecycle state. Otherwise, it returns all data repository tasks owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all tasks, you can paginate the response by using the optional MaxResults parameter to limit the number of tasks returned in a response. If more tasks remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response.
    public func describeDataRepositoryTasksPaginator(_ input: DescribeDataRepositoryTasksRequest, onPage: @escaping (DescribeDataRepositoryTasksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDataRepositoryTasks, tokenKey: \DescribeDataRepositoryTasksResponse.nextToken, onPage: onPage)
    }

    ///  Returns the description of specific Amazon FSx file systems, if a FileSystemIds value is provided for that file system. Otherwise, it returns descriptions of all file systems owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all file system descriptions, you can optionally specify the MaxResults parameter to limit the number of descriptions in a response. If more file system descriptions remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your file system descriptions. DescribeFileSystems is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:   The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.   The order of file systems returned in the response of one DescribeFileSystems call and the order of file systems returned across the responses of a multicall iteration is unspecified.  
    public func describeFileSystemsPaginator(_ input: DescribeFileSystemsRequest, onPage: @escaping (DescribeFileSystemsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeFileSystems, tokenKey: \DescribeFileSystemsResponse.nextToken, onPage: onPage)
    }

}

extension FSx.DescribeBackupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FSx.DescribeBackupsRequest {
        return .init(
            backupIds: self.backupIds, 
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension FSx.DescribeDataRepositoryTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FSx.DescribeDataRepositoryTasksRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            taskIds: self.taskIds
        )

    }
}

extension FSx.DescribeFileSystemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FSx.DescribeFileSystemsRequest {
        return .init(
            fileSystemIds: self.fileSystemIds, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


