// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon AppStream 2.0 This is the Amazon AppStream 2.0 API Reference. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand. To learn more about AppStream 2.0, see the following resources:    Amazon AppStream 2.0 product page     Amazon AppStream 2.0 documentation   
*/
public struct AppStream {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "PhotonAdminProxyService",
            service: "appstream2",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-12-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AppStreamErrorType.self]
        )
    }

    ///  Associates the specified fleet with the specified stack.
    public func associateFleet(_ input: AssociateFleetRequest) throws -> Future<AssociateFleetResult> {
        return try client.send(operation: "AssociateFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.
    public func batchAssociateUserStack(_ input: BatchAssociateUserStackRequest) throws -> Future<BatchAssociateUserStackResult> {
        return try client.send(operation: "BatchAssociateUserStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified users from the specified stacks.
    public func batchDisassociateUserStack(_ input: BatchDisassociateUserStackRequest) throws -> Future<BatchDisassociateUserStackResult> {
        return try client.send(operation: "BatchDisassociateUserStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.
    public func copyImage(_ input: CopyImageRequest) throws -> Future<CopyImageResponse> {
        return try client.send(operation: "CopyImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    public func createDirectoryConfig(_ input: CreateDirectoryConfigRequest) throws -> Future<CreateDirectoryConfigResult> {
        return try client.send(operation: "CreateDirectoryConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a fleet. A fleet consists of streaming instances that run a specified image.
    public func createFleet(_ input: CreateFleetRequest) throws -> Future<CreateFleetResult> {
        return try client.send(operation: "CreateFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an image builder. An image builder is a virtual machine that is used to create an image. The initial state of the builder is PENDING. When it is ready, the state is RUNNING.
    public func createImageBuilder(_ input: CreateImageBuilderRequest) throws -> Future<CreateImageBuilderResult> {
        return try client.send(operation: "CreateImageBuilder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a URL to start an image builder streaming session.
    public func createImageBuilderStreamingURL(_ input: CreateImageBuilderStreamingURLRequest) throws -> Future<CreateImageBuilderStreamingURLResult> {
        return try client.send(operation: "CreateImageBuilderStreamingURL", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. 
    public func createStack(_ input: CreateStackRequest) throws -> Future<CreateStackResult> {
        return try client.send(operation: "CreateStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. 
    public func createStreamingURL(_ input: CreateStreamingURLRequest) throws -> Future<CreateStreamingURLResult> {
        return try client.send(operation: "CreateStreamingURL", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a usage report subscription. Usage reports are generated daily.
    public func createUsageReportSubscription(_ input: CreateUsageReportSubscriptionRequest) throws -> Future<CreateUsageReportSubscriptionResult> {
        return try client.send(operation: "CreateUsageReportSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new user in the user pool.
    public func createUser(_ input: CreateUserRequest) throws -> Future<CreateUserResult> {
        return try client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.
    public func deleteDirectoryConfig(_ input: DeleteDirectoryConfigRequest) throws -> Future<DeleteDirectoryConfigResult> {
        return try client.send(operation: "DeleteDirectoryConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified fleet.
    public func deleteFleet(_ input: DeleteFleetRequest) throws -> Future<DeleteFleetResult> {
        return try client.send(operation: "DeleteFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.
    public func deleteImage(_ input: DeleteImageRequest) throws -> Future<DeleteImageResult> {
        return try client.send(operation: "DeleteImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified image builder and releases the capacity.
    public func deleteImageBuilder(_ input: DeleteImageBuilderRequest) throws -> Future<DeleteImageBuilderResult> {
        return try client.send(operation: "DeleteImageBuilder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.
    public func deleteImagePermissions(_ input: DeleteImagePermissionsRequest) throws -> Future<DeleteImagePermissionsResult> {
        return try client.send(operation: "DeleteImagePermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.
    public func deleteStack(_ input: DeleteStackRequest) throws -> Future<DeleteStackResult> {
        return try client.send(operation: "DeleteStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables usage report generation.
    public func deleteUsageReportSubscription(_ input: DeleteUsageReportSubscriptionRequest) throws -> Future<DeleteUsageReportSubscriptionResult> {
        return try client.send(operation: "DeleteUsageReportSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a user from the user pool.
    public func deleteUser(_ input: DeleteUserRequest) throws -> Future<DeleteUserResult> {
        return try client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.  Although the response syntax in this topic includes the account password, this password is not returned in the actual response.
    public func describeDirectoryConfigs(_ input: DescribeDirectoryConfigsRequest) throws -> Future<DescribeDirectoryConfigsResult> {
        return try client.send(operation: "DescribeDirectoryConfigs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.
    public func describeFleets(_ input: DescribeFleetsRequest) throws -> Future<DescribeFleetsResult> {
        return try client.send(operation: "DescribeFleets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.
    public func describeImageBuilders(_ input: DescribeImageBuildersRequest) throws -> Future<DescribeImageBuildersResult> {
        return try client.send(operation: "DescribeImageBuilders", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. 
    public func describeImagePermissions(_ input: DescribeImagePermissionsRequest) throws -> Future<DescribeImagePermissionsResult> {
        return try client.send(operation: "DescribeImagePermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
    public func describeImages(_ input: DescribeImagesRequest) throws -> Future<DescribeImagesResult> {
        return try client.send(operation: "DescribeImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.
    public func describeSessions(_ input: DescribeSessionsRequest) throws -> Future<DescribeSessionsResult> {
        return try client.send(operation: "DescribeSessions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.
    public func describeStacks(_ input: DescribeStacksRequest) throws -> Future<DescribeStacksResult> {
        return try client.send(operation: "DescribeStacks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more usage report subscriptions.
    public func describeUsageReportSubscriptions(_ input: DescribeUsageReportSubscriptionsRequest) throws -> Future<DescribeUsageReportSubscriptionsResult> {
        return try client.send(operation: "DescribeUsageReportSubscriptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:   The stack name   The user name (email address of the user associated with the stack) and the authentication type for the user  
    public func describeUserStackAssociations(_ input: DescribeUserStackAssociationsRequest) throws -> Future<DescribeUserStackAssociationsResult> {
        return try client.send(operation: "DescribeUserStackAssociations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list that describes one or more specified users in the user pool.
    public func describeUsers(_ input: DescribeUsersRequest) throws -> Future<DescribeUsersResult> {
        return try client.send(operation: "DescribeUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. 
    public func disableUser(_ input: DisableUserRequest) throws -> Future<DisableUserResult> {
        return try client.send(operation: "DisableUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the specified fleet from the specified stack.
    public func disassociateFleet(_ input: DisassociateFleetRequest) throws -> Future<DisassociateFleetResult> {
        return try client.send(operation: "DisassociateFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.
    public func enableUser(_ input: EnableUserRequest) throws -> Future<EnableUserResult> {
        return try client.send(operation: "EnableUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Immediately stops the specified streaming session.
    public func expireSession(_ input: ExpireSessionRequest) throws -> Future<ExpireSessionResult> {
        return try client.send(operation: "ExpireSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the name of the fleet that is associated with the specified stack.
    public func listAssociatedFleets(_ input: ListAssociatedFleetsRequest) throws -> Future<ListAssociatedFleetsResult> {
        return try client.send(operation: "ListAssociatedFleets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the name of the stack with which the specified fleet is associated.
    public func listAssociatedStacks(_ input: ListAssociatedStacksRequest) throws -> Future<ListAssociatedStacksResult> {
        return try client.send(operation: "ListAssociatedStacks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Developer Guide.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the specified fleet.
    public func startFleet(_ input: StartFleetRequest) throws -> Future<StartFleetResult> {
        return try client.send(operation: "StartFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the specified image builder.
    public func startImageBuilder(_ input: StartImageBuilderRequest) throws -> Future<StartImageBuilderResult> {
        return try client.send(operation: "StartImageBuilder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the specified fleet.
    public func stopFleet(_ input: StopFleetRequest) throws -> Future<StopFleetResult> {
        return try client.send(operation: "StopFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the specified image builder.
    public func stopImageBuilder(_ input: StopImageBuilderRequest) throws -> Future<StopImageBuilderResult> {
        return try client.send(operation: "StopImageBuilder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value. To list the current tags for your resources, use ListTagsForResource. To disassociate tags from your resources, use UntagResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Developer Guide.
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates one or more specified tags from the specified AppStream 2.0 resource. To list the current tags for your resources, use ListTagsForResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Developer Guide.
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    public func updateDirectoryConfig(_ input: UpdateDirectoryConfigRequest) throws -> Future<UpdateDirectoryConfigResult> {
        return try client.send(operation: "UpdateDirectoryConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified fleet. If the fleet is in the STOPPED state, you can update any attribute except the fleet name. If the fleet is in the RUNNING state, you can update the DisplayName, ComputeCapacity, ImageARN, ImageName, and DisconnectTimeoutInSeconds attributes. If the fleet is in the STARTING or STOPPING state, you can't update it.
    public func updateFleet(_ input: UpdateFleetRequest) throws -> Future<UpdateFleetResult> {
        return try client.send(operation: "UpdateFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or updates permissions for the specified private image. 
    public func updateImagePermissions(_ input: UpdateImagePermissionsRequest) throws -> Future<UpdateImagePermissionsResult> {
        return try client.send(operation: "UpdateImagePermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified fields for the specified stack.
    public func updateStack(_ input: UpdateStackRequest) throws -> Future<UpdateStackResult> {
        return try client.send(operation: "UpdateStack", path: "/", httpMethod: "POST", input: input)
    }
}
