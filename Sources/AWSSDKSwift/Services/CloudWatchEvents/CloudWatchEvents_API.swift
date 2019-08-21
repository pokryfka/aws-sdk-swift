// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon CloudWatch Events helps you to respond to state changes in your AWS resources. When your resources change state, they automatically send events into an event stream. You can create rules that match selected events in the stream and route them to targets to take action. You can also use rules to take action on a predetermined schedule. For example, you can configure rules to:   Automatically invoke an AWS Lambda function to update DNS entries when an event notifies you that Amazon EC2 instance enters the running state.   Direct specific API records from AWS CloudTrail to an Amazon Kinesis data stream for detailed analysis of potential security or availability risks.   Periodically invoke a built-in target to create a snapshot of an Amazon EBS volume.   For more information about the features of Amazon CloudWatch Events, see the Amazon CloudWatch Events User Guide.
*/
public struct CloudWatchEvents {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSEvents",
            service: "events",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-10-07",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CloudWatchEventsErrorType.self]
        )
    }

    ///  Deletes the specified rule. Before you can delete the rule, you must remove all targets, using RemoveTargets. When you delete a rule, incoming events might continue to match to the deleted rule. Allow a short period of time for changes to take effect. Managed rules are rules created and managed by another AWS service on your behalf. These rules are created by those other AWS services to support functionality in those services. You can delete these rules using the Force option, but you should do so only if you are sure the other service is not still using that rule.
    @discardableResult public func deleteRule(_ input: DeleteRuleRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays the external AWS accounts that are permitted to write events to your account using your account's event bus, and the associated policy. To enable your account to receive events from other accounts, use PutPermission.
    public func describeEventBus(_ input: DescribeEventBusRequest) throws -> Future<DescribeEventBusResponse> {
        return try client.send(operation: "DescribeEventBus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the specified rule. DescribeRule does not list the targets of a rule. To see the targets associated with a rule, use ListTargetsByRule.
    public func describeRule(_ input: DescribeRuleRequest) throws -> Future<DescribeRuleResponse> {
        return try client.send(operation: "DescribeRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables the specified rule. A disabled rule won't match any events, and won't self-trigger if it has a schedule expression. When you disable a rule, incoming events might continue to match to the disabled rule. Allow a short period of time for changes to take effect.
    @discardableResult public func disableRule(_ input: DisableRuleRequest) throws -> Future<Void> {
        return try client.send(operation: "DisableRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables the specified rule. If the rule does not exist, the operation fails. When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Allow a short period of time for changes to take effect.
    @discardableResult public func enableRule(_ input: EnableRuleRequest) throws -> Future<Void> {
        return try client.send(operation: "EnableRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the rules for the specified target. You can see which of the rules in Amazon CloudWatch Events can invoke a specific target in your account.
    public func listRuleNamesByTarget(_ input: ListRuleNamesByTargetRequest) throws -> Future<ListRuleNamesByTargetResponse> {
        return try client.send(operation: "ListRuleNamesByTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists your Amazon CloudWatch Events rules. You can either list all the rules or you can provide a prefix to match to the rule names. ListRules does not list the targets of a rule. To see the targets associated with a rule, use ListTargetsByRule.
    public func listRules(_ input: ListRulesRequest) throws -> Future<ListRulesResponse> {
        return try client.send(operation: "ListRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays the tags associated with a CloudWatch Events resource. In CloudWatch Events, rules can be tagged.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the targets assigned to the specified rule.
    public func listTargetsByRule(_ input: ListTargetsByRuleRequest) throws -> Future<ListTargetsByRuleResponse> {
        return try client.send(operation: "ListTargetsByRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sends custom events to Amazon CloudWatch Events so that they can be matched to rules.
    public func putEvents(_ input: PutEventsRequest) throws -> Future<PutEventsResponse> {
        return try client.send(operation: "PutEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Running PutPermission permits the specified AWS account or AWS organization to put events to your account's default event bus. CloudWatch Events rules in your account are triggered by these events arriving to your default event bus.  For another account to send events to your account, that external account must have a CloudWatch Events rule with your account's default event bus as a target. To enable multiple AWS accounts to put events to your default event bus, run PutPermission once for each of these accounts. Or, if all the accounts are members of the same AWS organization, you can run PutPermission once specifying Principal as "*" and specifying the AWS organization ID in Condition, to grant permissions to all accounts in that organization. If you grant permissions using an organization, then accounts in that organization must specify a RoleArn with proper permissions when they use PutTarget to add your account's event bus as a target. For more information, see Sending and Receiving Events Between AWS Accounts in the Amazon CloudWatch Events User Guide. The permission policy on the default event bus cannot exceed 10 KB in size.
    @discardableResult public func putPermission(_ input: PutPermissionRequest) throws -> Future<Void> {
        return try client.send(operation: "PutPermission", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates the specified rule. Rules are enabled by default, or based on value of the state. You can disable a rule using DisableRule. If you are updating an existing rule, the rule is replaced with what you specify in this PutRule command. If you omit arguments in PutRule, the old values for those arguments are not kept. Instead, they are replaced with null values. When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect. A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule. When you initially create a rule, you can optionally assign one or more tags to the rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only rules with certain tag values. To use the PutRule operation and assign tags, you must have both the events:PutRule and events:TagResource permissions. If you are updating an existing rule, any tags you specify in the PutRule operation are ignored. To update the tags of an existing rule, use TagResource and UntagResource. Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match. In CloudWatch Events, it is possible to create rules that lead to infinite loops, where a rule is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket, and trigger software to change them to the desired state. If the rule is not written carefully, the subsequent change to the ACLs fires the rule again, creating an infinite loop. To prevent this, write the rules so that the triggered actions do not re-fire the same rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead of after any change.  An infinite loop can quickly cause higher than expected charges. We recommend that you use budgeting, which alerts you when charges exceed your specified limit. For more information, see Managing Your Costs with Budgets.
    public func putRule(_ input: PutRuleRequest) throws -> Future<PutRuleResponse> {
        return try client.send(operation: "PutRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule. Targets are the resources that are invoked when a rule is triggered. You can configure the following as targets for CloudWatch Events:   EC2 instances   SSM Run Command   SSM Automation   AWS Lambda functions   Data streams in Amazon Kinesis Data Streams   Data delivery streams in Amazon Kinesis Data Firehose   Amazon ECS tasks   AWS Step Functions state machines   AWS Batch jobs   AWS CodeBuild projects   Pipelines in AWS CodePipeline   Amazon Inspector assessment templates   Amazon SNS topics   Amazon SQS queues, including FIFO queues   The default event bus of another AWS account   Creating rules with built-in targets is supported only in the AWS Management Console. The built-in targets are EC2 CreateSnapshot API call, EC2 RebootInstances API call, EC2 StopInstances API call, and EC2 TerminateInstances API call.  For some target types, PutTargets provides target-specific parameters. If the target is a Kinesis data stream, you can optionally specify which shard the event goes to by using the KinesisParameters argument. To invoke a command on multiple EC2 instances with one rule, you can use the RunCommandParameters field. To be able to make API calls against the resources that you own, Amazon CloudWatch Events needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, CloudWatch Events relies on resource-based policies. For EC2 instances, Kinesis data streams, and AWS Step Functions state machines, CloudWatch Events relies on IAM roles that you specify in the RoleARN argument in PutTargets. For more information, see Authentication and Access Control in the Amazon CloudWatch Events User Guide. If another AWS account is in the same region and has granted you permission (using PutPermission), you can send events to that account. Set that account's event bus as a target of the rules in your account. To send the matched events to the other account, specify that account's event bus as the Arn value when you run PutTargets. If your account sends events to another account, your account is charged for each sent event. Each event sent to another account is charged as a custom event. The account receiving the event is not charged. For more information, see Amazon CloudWatch Pricing. If you are setting the event bus of another account as the target, and that account granted permission to your account through an organization instead of directly by the account ID, then you must specify a RoleArn with proper permissions in the Target structure. For more information, see Sending and Receiving Events Between AWS Accounts in the Amazon CloudWatch Events User Guide. For more information about enabling cross-account events, see PutPermission.  Input, InputPath, and InputTransformer are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:   If none of the following arguments are specified for a target, then the entire event is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).   If Input is specified in the form of valid JSON, then the matched event is overridden with this constant.   If InputPath is specified in the form of JSONPath (for example, $.detail), then only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).   If InputTransformer is specified, then one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.   When you specify InputPath or InputTransformer, you must use JSON dot notation, not bracket notation. When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Allow a short period of time for changes to take effect. This action can partially fail if too many requests are made at the same time. If that happens, FailedEntryCount is non-zero in the response and each entry in FailedEntries provides the ID of the failed target and the error code.
    public func putTargets(_ input: PutTargetsRequest) throws -> Future<PutTargetsResponse> {
        return try client.send(operation: "PutTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Revokes the permission of another AWS account to be able to put events to your default event bus. Specify the account to revoke by the StatementId value that you associated with the account when you granted it permission with PutPermission. You can find the StatementId by using DescribeEventBus.
    @discardableResult public func removePermission(_ input: RemovePermissionRequest) throws -> Future<Void> {
        return try client.send(operation: "RemovePermission", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked. When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Allow a short period of time for changes to take effect. This action can partially fail if too many requests are made at the same time. If that happens, FailedEntryCount is non-zero in the response and each entry in FailedEntries provides the ID of the failed target and the error code.
    public func removeTargets(_ input: RemoveTargetsRequest) throws -> Future<RemoveTargetsResponse> {
        return try client.send(operation: "RemoveTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Assigns one or more tags (key-value pairs) to the specified CloudWatch Events resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In CloudWatch Events, rules can be tagged. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with a rule that already has tags. If you specify a new tag key for the rule, this tag is appended to the list of tags associated with the rule. If you specify a tag key that is already associated with the rule, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tests whether the specified event pattern matches the provided event. Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.
    public func testEventPattern(_ input: TestEventPatternRequest) throws -> Future<TestEventPatternResponse> {
        return try client.send(operation: "TestEventPattern", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from the specified CloudWatch Events resource. In CloudWatch Events, rules can be tagged.
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }
}
