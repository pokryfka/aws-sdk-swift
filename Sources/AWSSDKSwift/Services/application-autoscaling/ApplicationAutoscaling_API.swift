// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import AWSSDKSwiftCore

/**
With Application Auto Scaling, you can automatically scale your AWS resources. The experience similar to that of Auto Scaling. You can use Application Auto Scaling to accomplish the following tasks:   Define scaling policies to automatically scale your AWS resources   Scale your resources in response to CloudWatch alarms   View the history of your scaling events   Application Auto Scaling can scale the following AWS resources:   Amazon ECS services. For more information, see Service Auto Scaling in the Amazon EC2 Container Service Developer Guide.   Amazon EC2 Spot fleets. For more information, see Automatic Scaling for Spot Fleet in the Amazon EC2 User Guide.   Amazon EMR clusters. For more information, see Using Automatic Scaling in Amazon EMR in the Amazon EMR Management Guide.   For a list of supported regions, see AWS Regions and Endpoints: Application Auto Scaling in the AWS General Reference.
*/
public struct ApplicationAutoscaling {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AnyScaleFrontendService",
            service: "autoscaling",
            serviceProtocol: .json,
            apiVersion: "2016-02-06",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ApplicationAutoscalingError.self]
        )
    }

    ///  Deregisters a scalable target. Deregistering a scalable target deletes the scaling policies that are associated with it. To create a scalable target or update an existing one, see RegisterScalableTarget.
    public func deregisterScalableTarget(_ input: DeregisterScalableTargetRequest) throws -> DeregisterScalableTargetResponse {
        return try client.send(operation: "DeregisterScalableTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy without first registering a scalable target using RegisterScalableTarget. To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request. You can view the scaling policies for a service namespace using DescribeScalingPolicies. If you are no longer using a scaling policy, you can delete it using DeleteScalingPolicy.
    public func putScalingPolicy(_ input: PutScalingPolicyRequest) throws -> PutScalingPolicyResponse {
        return try client.send(operation: "PutScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides descriptive information about the scalable targets in the specified namespace. You can filter the results using the ResourceIds and ScalableDimension parameters. To create a scalable target or update an existing one, see RegisterScalableTarget. If you are no longer using a scalable target, you can deregister it using DeregisterScalableTarget.
    public func describeScalableTargets(_ input: DescribeScalableTargetsRequest) throws -> DescribeScalableTargetsResponse {
        return try client.send(operation: "DescribeScalableTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using the ResourceId and ScalableDimension parameters. Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see DescribeScalingPolicies. To create a scaling policy or update an existing one, see PutScalingPolicy.
    public func describeScalingActivities(_ input: DescribeScalingActivitiesRequest) throws -> DescribeScalingActivitiesResponse {
        return try client.send(operation: "DescribeScalingActivities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides descriptive information about the scaling policies in the specified namespace. You can filter the results using the ResourceId, ScalableDimension, and PolicyNames parameters. To create a scaling policy or update an existing one, see PutScalingPolicy. If you are no longer using a scaling policy, you can delete it using DeleteScalingPolicy.
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest) throws -> DescribeScalingPoliciesResponse {
        return try client.send(operation: "DescribeScalingPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out or scale in. After you have registered a scalable target, you can use this operation to update the minimum and maximum values for your scalable dimension. After you register a scalable target, you can create and apply scaling policies using PutScalingPolicy. You can view the scaling policies for a service namespace using DescribeScalableTargets. If you are no longer using a scalable target, you can deregister it using DeregisterScalableTarget.
    public func registerScalableTarget(_ input: RegisterScalableTargetRequest) throws -> RegisterScalableTargetResponse {
        return try client.send(operation: "RegisterScalableTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified Application Auto Scaling scaling policy. Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. To create a scaling policy or update an existing one, see PutScalingPolicy.
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest) throws -> DeleteScalingPolicyResponse {
        return try client.send(operation: "DeleteScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }


}