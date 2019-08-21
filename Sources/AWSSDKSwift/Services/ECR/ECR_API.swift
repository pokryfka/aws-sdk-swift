// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Elastic Container Registry (Amazon ECR) is a managed Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.
*/
public struct ECR {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AmazonEC2ContainerRegistry_V20150921",
            service: "api.ecr",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-09-21",
            endpoint: endpoint,
            serviceEndpoints: ["ap-east-1": "api.ecr.ap-east-1.amazonaws.com", "ap-northeast-1": "api.ecr.ap-northeast-1.amazonaws.com", "ap-northeast-2": "api.ecr.ap-northeast-2.amazonaws.com", "ap-south-1": "api.ecr.ap-south-1.amazonaws.com", "ap-southeast-1": "api.ecr.ap-southeast-1.amazonaws.com", "ap-southeast-2": "api.ecr.ap-southeast-2.amazonaws.com", "ca-central-1": "api.ecr.ca-central-1.amazonaws.com", "eu-central-1": "api.ecr.eu-central-1.amazonaws.com", "eu-north-1": "api.ecr.eu-north-1.amazonaws.com", "eu-west-1": "api.ecr.eu-west-1.amazonaws.com", "eu-west-2": "api.ecr.eu-west-2.amazonaws.com", "eu-west-3": "api.ecr.eu-west-3.amazonaws.com", "sa-east-1": "api.ecr.sa-east-1.amazonaws.com", "us-east-1": "api.ecr.us-east-1.amazonaws.com", "us-east-2": "api.ecr.us-east-2.amazonaws.com", "us-west-1": "api.ecr.us-west-1.amazonaws.com", "us-west-2": "api.ecr.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [ECRErrorType.self]
        )
    }

    ///  Check the availability of multiple image layers in a specified registry and repository.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func batchCheckLayerAvailability(_ input: BatchCheckLayerAvailabilityRequest) throws -> Future<BatchCheckLayerAvailabilityResponse> {
        return try client.send(operation: "BatchCheckLayerAvailability", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a list of specified images within a specified repository. Images are specified with either imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the image's digest in your request.
    public func batchDeleteImage(_ input: BatchDeleteImageRequest) throws -> Future<BatchDeleteImageResponse> {
        return try client.send(operation: "BatchDeleteImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets detailed information for specified images within a specified repository. Images are specified with either imageTag or imageDigest.
    public func batchGetImage(_ input: BatchGetImageRequest) throws -> Future<BatchGetImageResponse> {
        return try client.send(operation: "BatchGetImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a sha256 digest of the image layer for data validation purposes.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func completeLayerUpload(_ input: CompleteLayerUploadRequest) throws -> Future<CompleteLayerUploadResponse> {
        return try client.send(operation: "CompleteLayerUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an image repository.
    public func createRepository(_ input: CreateRepositoryRequest) throws -> Future<CreateRepositoryResponse> {
        return try client.send(operation: "CreateRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified lifecycle policy.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest) throws -> Future<DeleteLifecyclePolicyResponse> {
        return try client.send(operation: "DeleteLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing image repository. If a repository contains images, you must use the force option to delete it.
    public func deleteRepository(_ input: DeleteRepositoryRequest) throws -> Future<DeleteRepositoryResponse> {
        return try client.send(operation: "DeleteRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the repository policy from a specified repository.
    public func deleteRepositoryPolicy(_ input: DeleteRepositoryPolicyRequest) throws -> Future<DeleteRepositoryPolicyResponse> {
        return try client.send(operation: "DeleteRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata about the images in a repository, including image size, image tags, and creation date.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 
    public func describeImages(_ input: DescribeImagesRequest) throws -> Future<DescribeImagesResponse> {
        return try client.send(operation: "DescribeImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes image repositories in a registry.
    public func describeRepositories(_ input: DescribeRepositoriesRequest) throws -> Future<DescribeRepositoriesResponse> {
        return try client.send(operation: "DescribeRepositories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the docker CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed. The authorizationToken returned for each registry specified is a base64 encoded string that can be decoded and used in a docker login command to authenticate to a registry. The AWS CLI offers an aws ecr get-login command that simplifies the login process.
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest) throws -> Future<GetAuthorizationTokenResponse> {
        return try client.send(operation: "GetAuthorizationToken", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func getDownloadUrlForLayer(_ input: GetDownloadUrlForLayerRequest) throws -> Future<GetDownloadUrlForLayerResponse> {
        return try client.send(operation: "GetDownloadUrlForLayer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the specified lifecycle policy.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest) throws -> Future<GetLifecyclePolicyResponse> {
        return try client.send(operation: "GetLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the results of the specified lifecycle policy preview request.
    public func getLifecyclePolicyPreview(_ input: GetLifecyclePolicyPreviewRequest) throws -> Future<GetLifecyclePolicyPreviewResponse> {
        return try client.send(operation: "GetLifecyclePolicyPreview", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the repository policy for a specified repository.
    public func getRepositoryPolicy(_ input: GetRepositoryPolicyRequest) throws -> Future<GetRepositoryPolicyResponse> {
        return try client.send(operation: "GetRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Notify Amazon ECR that you intend to upload an image layer.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func initiateLayerUpload(_ input: InitiateLayerUploadRequest) throws -> Future<InitiateLayerUploadResponse> {
        return try client.send(operation: "InitiateLayerUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the image IDs for a given repository. You can filter images based on whether or not they are tagged by setting the tagStatus parameter to TAGGED or UNTAGGED. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    public func listImages(_ input: ListImagesRequest) throws -> Future<ListImagesResponse> {
        return try client.send(operation: "ListImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the tags for an Amazon ECR resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates the image manifest and tags associated with an image.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func putImage(_ input: PutImageRequest) throws -> Future<PutImageResponse> {
        return try client.send(operation: "PutImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see Lifecycle Policy Template.
    public func putLifecyclePolicy(_ input: PutLifecyclePolicyRequest) throws -> Future<PutLifecyclePolicyResponse> {
        return try client.send(operation: "PutLifecyclePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a repository policy on a specified repository to control access permissions.
    public func setRepositoryPolicy(_ input: SetRepositoryPolicyRequest) throws -> Future<SetRepositoryPolicyResponse> {
        return try client.send(operation: "SetRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.
    public func startLifecyclePolicyPreview(_ input: StartLifecyclePolicyPreviewRequest) throws -> Future<StartLifecyclePolicyPreviewResponse> {
        return try client.send(operation: "StartLifecyclePolicyPreview", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads an image layer part to Amazon ECR.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func uploadLayerPart(_ input: UploadLayerPartRequest) throws -> Future<UploadLayerPartResponse> {
        return try client.send(operation: "UploadLayerPart", path: "/", httpMethod: "POST", input: input)
    }
}
