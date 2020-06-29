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
Client object for interacting with AWS WAFV2 service.

 This is the latest version of the AWS WAF API, released in November, 2019. The names of the entities that you use to access this API, like endpoints and namespaces, all have the versioning information added, like "V2" or "v2", to distinguish from the prior version. We recommend migrating your resources to this version, because it has a number of significant improvements. If you used AWS WAF prior to this release, you can't use this AWS WAFV2 API to access any AWS WAF resources that you created before. You can access your old rules, web ACLs, and other AWS WAF resources only through the AWS WAF Classic APIs. The AWS WAF Classic APIs have retained the prior names, endpoints, and namespaces.  For information, including how to migrate your AWS WAF resources to this version, see the AWS WAF Developer Guide.   AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. AWS WAF also lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, API Gateway, CloudFront, or the Application Load Balancer responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You also can configure CloudFront to return a custom error page when a request is blocked. This API guide is for developers who need detailed information about AWS WAF API actions, data types, and errors. For detailed information about AWS WAF features and an overview of how to use AWS WAF, see the AWS WAF Developer Guide. You can make calls using the endpoints listed in AWS Service Endpoints for AWS WAF.    For regional applications, you can use any of the endpoints in the list. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.    For AWS CloudFront applications, you must use the API endpoint listed for US East (N. Virginia): us-east-1.   Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see AWS SDKs. We currently provide two versions of the AWS WAF API: this API and the prior versions, the classic AWS WAF APIs. This new API provides the same functionality as the older versions, with the following major improvements:   You use one API for both global and regional applications. Where you need to distinguish the scope, you specify a Scope parameter and set it to CLOUDFRONT or REGIONAL.    You can define a Web ACL or rule group with a single call, and update it with a single call. You define all rule specifications in JSON format, and pass them to your rule group or Web ACL calls.   The limits AWS WAF places on the use of rules more closely reflects the cost of running each type of rule. Rule groups include capacity settings, so you know the maximum cost of a rule group when you use it.  
*/
public struct WAFV2 {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the WAFV2 client
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
            amzTarget: "AWSWAF_20190729",
            service: "wafv2",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-07-29",
            endpoint: endpoint,
            possibleErrorTypes: [WAFV2ErrorType.self]
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates a Web ACL with a regional application resource, to protect the resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, don't use this call. Instead, use your CloudFront distribution configuration. To associate a Web ACL, in the CloudFront call UpdateDistribution, set the web ACL ID to the Amazon Resource Name (ARN) of the Web ACL. For information, see UpdateDistribution.
    public func associateWebACL(_ input: AssociateWebACLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateWebACLResponse> {
        return client.execute(operation: "AssociateWebACL", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules. You can use this to check the capacity requirements for the rules you want to use in a RuleGroup or WebACL.  AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. 
    public func checkCapacity(_ input: CheckCapacityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckCapacityResponse> {
        return client.execute(operation: "CheckCapacity", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates an IPSet, which you use to identify web requests that originate from specific IP addresses or ranges of IP addresses. For example, if you're receiving a lot of requests from a ranges of IP addresses, you can configure AWS WAF to block them using an IPSet that lists those IP addresses. 
    public func createIPSet(_ input: CreateIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIPSetResponse> {
        return client.execute(operation: "CreateIPSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RegexPatternSet, which you reference in a RegexPatternSetReferenceStatement, to have AWS WAF inspect a web request component for the specified patterns.
    public func createRegexPatternSet(_ input: CreateRegexPatternSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRegexPatternSetResponse> {
        return client.execute(operation: "CreateRegexPatternSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RuleGroup per the specifications provided.   A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 
    public func createRuleGroup(_ input: CreateRuleGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleGroupResponse> {
        return client.execute(operation: "CreateRuleGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a WebACL per the specifications provided.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 
    public func createWebACL(_ input: CreateWebACLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebACLResponse> {
        return client.execute(operation: "CreateWebACL", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes all rule groups that are managed by AWS Firewall Manager for the specified web ACL.  You can only use this if ManagedByFirewallManager is false in the specified WebACL. 
    public func deleteFirewallManagerRuleGroups(_ input: DeleteFirewallManagerRuleGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallManagerRuleGroupsResponse> {
        return client.execute(operation: "DeleteFirewallManagerRuleGroups", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified IPSet. 
    public func deleteIPSet(_ input: DeleteIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIPSetResponse> {
        return client.execute(operation: "DeleteIPSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the LoggingConfiguration from the specified web ACL.
    public func deleteLoggingConfiguration(_ input: DeleteLoggingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoggingConfigurationResponse> {
        return client.execute(operation: "DeleteLoggingConfiguration", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Permanently deletes an IAM policy from the specified rule group. You must be the owner of the rule group to perform this operation.
    public func deletePermissionPolicy(_ input: DeletePermissionPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePermissionPolicyResponse> {
        return client.execute(operation: "DeletePermissionPolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RegexPatternSet.
    public func deleteRegexPatternSet(_ input: DeleteRegexPatternSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRegexPatternSetResponse> {
        return client.execute(operation: "DeleteRegexPatternSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RuleGroup.
    public func deleteRuleGroup(_ input: DeleteRuleGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleGroupResponse> {
        return client.execute(operation: "DeleteRuleGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified WebACL. You can only use this if ManagedByFirewallManager is false in the specified WebACL. 
    public func deleteWebACL(_ input: DeleteWebACLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebACLResponse> {
        return client.execute(operation: "DeleteWebACL", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Provides high-level information for a managed rule group, including descriptions of the rules. 
    public func describeManagedRuleGroup(_ input: DescribeManagedRuleGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeManagedRuleGroupResponse> {
        return client.execute(operation: "DescribeManagedRuleGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates a Web ACL from a regional application resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, don't use this call. Instead, use your CloudFront distribution configuration. To disassociate a Web ACL, provide an empty web ACL ID in the CloudFront call UpdateDistribution. For information, see UpdateDistribution.
    public func disassociateWebACL(_ input: DisassociateWebACLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateWebACLResponse> {
        return client.execute(operation: "DisassociateWebACL", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified IPSet.
    public func getIPSet(_ input: GetIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIPSetResponse> {
        return client.execute(operation: "GetIPSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the LoggingConfiguration for the specified web ACL.
    public func getLoggingConfiguration(_ input: GetLoggingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLoggingConfigurationResponse> {
        return client.execute(operation: "GetLoggingConfiguration", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the IAM policy that is attached to the specified rule group. You must be the owner of the rule group to perform this operation.
    public func getPermissionPolicy(_ input: GetPermissionPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPermissionPolicyResponse> {
        return client.execute(operation: "GetPermissionPolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the keys that are currently blocked by a rate-based rule. The maximum number of managed keys that can be blocked for a single rate-based rule is 10,000. If more than 10,000 addresses exceed the rate limit, those with the highest rates are blocked.
    public func getRateBasedStatementManagedKeys(_ input: GetRateBasedStatementManagedKeysRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRateBasedStatementManagedKeysResponse> {
        return client.execute(operation: "GetRateBasedStatementManagedKeys", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RegexPatternSet.
    public func getRegexPatternSet(_ input: GetRegexPatternSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRegexPatternSetResponse> {
        return client.execute(operation: "GetRegexPatternSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RuleGroup.
    public func getRuleGroup(_ input: GetRuleGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRuleGroupResponse> {
        return client.execute(operation: "GetRuleGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.  GetSampledRequests returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, GetSampledRequests returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.
    public func getSampledRequests(_ input: GetSampledRequestsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSampledRequestsResponse> {
        return client.execute(operation: "GetSampledRequests", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified WebACL.
    public func getWebACL(_ input: GetWebACLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWebACLResponse> {
        return client.execute(operation: "GetWebACL", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the WebACL for the specified resource. 
    public func getWebACLForResource(_ input: GetWebACLForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWebACLForResourceResponse> {
        return client.execute(operation: "GetWebACLForResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of managed rule groups that are available for you to use. This list includes all AWS Managed Rules rule groups and the AWS Marketplace managed rule groups that you're subscribed to.
    public func listAvailableManagedRuleGroups(_ input: ListAvailableManagedRuleGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAvailableManagedRuleGroupsResponse> {
        return client.execute(operation: "ListAvailableManagedRuleGroups", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of IPSetSummary objects for the IP sets that you manage.
    public func listIPSets(_ input: ListIPSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIPSetsResponse> {
        return client.execute(operation: "ListIPSets", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of your LoggingConfiguration objects.
    public func listLoggingConfigurations(_ input: ListLoggingConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLoggingConfigurationsResponse> {
        return client.execute(operation: "ListLoggingConfigurations", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RegexPatternSetSummary objects for the regex pattern sets that you manage.
    public func listRegexPatternSets(_ input: ListRegexPatternSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRegexPatternSetsResponse> {
        return client.execute(operation: "ListRegexPatternSets", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that are associated with the specified web ACL. If you want the list of AWS CloudFront resources, use the AWS CloudFront call ListDistributionsByWebACLId. 
    public func listResourcesForWebACL(_ input: ListResourcesForWebACLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesForWebACLResponse> {
        return client.execute(operation: "ListResourcesForWebACL", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RuleGroupSummary objects for the rule groups that you manage. 
    public func listRuleGroups(_ input: ListRuleGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRuleGroupsResponse> {
        return client.execute(operation: "ListRuleGroups", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the TagInfoForResource for the specified resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of WebACLSummary objects for the web ACLs that you manage.
    public func listWebACLs(_ input: ListWebACLsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWebACLsResponse> {
        return client.execute(operation: "ListWebACLs", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Enables the specified LoggingConfiguration, to start logging from a web ACL, according to the configuration provided. You can access information about all traffic that AWS WAF inspects using the following steps:   Create an Amazon Kinesis Data Firehose.  Create the data firehose with a PUT source and in the Region that you are operating. If you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia).   Do not create the data firehose using a Kinesis stream as your source.    Associate that firehose to your web ACL using a PutLoggingConfiguration request.   When you successfully enable logging using a PutLoggingConfiguration request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose. For more information, see Logging Web ACL Traffic Information in the AWS WAF Developer Guide.
    public func putLoggingConfiguration(_ input: PutLoggingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutLoggingConfigurationResponse> {
        return client.execute(operation: "PutLoggingConfiguration", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Attaches an IAM policy to the specified resource. Use this to share a rule group across accounts. You must be the owner of the rule group to perform this operation. This action is subject to the following restrictions:   You can attach only one policy with each PutPermissionPolicy request.   The ARN in the request must be a valid WAF RuleGroup ARN and the rule group must exist in the same region.   The user making the request must be the owner of the rule group.  
    public func putPermissionPolicy(_ input: PutPermissionPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutPermissionPolicyResponse> {
        return client.execute(operation: "PutPermissionPolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates tags with the specified AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates tags from an AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified IPSet.
    public func updateIPSet(_ input: UpdateIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIPSetResponse> {
        return client.execute(operation: "UpdateIPSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RegexPatternSet.
    public func updateRegexPatternSet(_ input: UpdateRegexPatternSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRegexPatternSetResponse> {
        return client.execute(operation: "UpdateRegexPatternSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RuleGroup.  A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 
    public func updateRuleGroup(_ input: UpdateRuleGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleGroupResponse> {
        return client.execute(operation: "UpdateRuleGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified WebACL.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 
    public func updateWebACL(_ input: UpdateWebACLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWebACLResponse> {
        return client.execute(operation: "UpdateWebACL", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
