// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Global Accelerator This is the AWS Global Accelerator API Reference. This guide is for developers who need detailed information about AWS Global Accelerator API actions, data types, and errors. For more information about Global Accelerator features, see the AWS Global Accelerator Developer Guide.  AWS Global Accelerator is a network layer service in which you create accelerators to improve availability and performance for internet applications used by a global audience.  Global Accelerator provides you with static IP addresses that you associate with your accelerator. These IP addresses are anycast from the AWS edge network and distribute incoming application traffic across multiple endpoint resources in multiple AWS Regions, which increases the availability of your applications. Endpoints can be Elastic IP addresses, Network Load Balancers, and Application Load Balancers that are located in one AWS Region or multiple Regions. Global Accelerator uses the AWS global network to route traffic to the optimal regional endpoint based on health, client location, and policies that you configure. The service reacts instantly to changes in health or configuration to ensure that internet traffic from clients is directed to only healthy endpoints. Global Accelerator includes components that work together to help you improve performance and availability for your applications:  Static IP address  AWS Global Accelerator provides you with a set of static IP addresses which are anycast from the AWS edge network and serve as the single fixed entry points for your clients. If you already have Elastic Load Balancing or Elastic IP address resources set up for your applications, you can easily add those to Global Accelerator to allow the resources to be accessed by a Global Accelerator static IP address.  Accelerator  An accelerator directs traffic to optimal endpoints over the AWS global network to improve availability and performance for your internet applications that have a global audience. Each accelerator includes one or more listeners.  Network zone  A network zone services the static IP addresses for your accelerator from a unique IP subnet. Similar to an AWS Availability Zone, a network zone is an isolated unit with its own set of physical infrastructure. When you configure an accelerator, Global Accelerator allocates two IPv4 addresses for it. If one IP address from a network zone becomes unavailable due to IP address blocking by certain client networks, or network disruptions, then client applications can retry on the healthy static IP address from the other isolated network zone.  Listener  A listener processes inbound connections from clients to Global Accelerator, based on the protocol and port that you configure. Each listener has one or more endpoint groups associated with it, and traffic is forwarded to endpoints in one of the groups. You associate endpoint groups with listeners by specifying the Regions that you want to distribute traffic to. Traffic is distributed to optimal endpoints within the endpoint groups associated with a listener.  Endpoint group  Each endpoint group is associated with a specific AWS Region. Endpoint groups include one or more endpoints in the Region. You can increase or reduce the percentage of traffic that would be otherwise directed to an endpoint group by adjusting a setting called a traffic dial. The traffic dial lets you easily do performance testing or blue/green deployment testing for new releases across different AWS Regions, for example.   Endpoint  An endpoint is an Elastic IP address, Network Load Balancer, or Application Load Balancer. Traffic is routed to endpoints based on several factors, including the geo-proximity to the user, the health of the endpoint, and the configuration options that you choose, such as endpoint weights. For each endpoint, you can configure weights, which are numbers that you can use to specify the proportion of traffic to route to each one. This can be useful, for example, to do performance testing within a Region.  
*/
public struct GlobalAccelerator {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "GlobalAccelerator_V20180706",
            service: "globalaccelerator",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-08-08",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [GlobalAcceleratorErrorType.self]
        )
    }

    ///  Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. To see an AWS CLI example of creating an accelerator, scroll down to Example.
    public func createAccelerator(_ input: CreateAcceleratorRequest) throws -> Future<CreateAcceleratorResponse> {
        return try client.send(operation: "CreateAccelerator", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one AWS Region. To see an AWS CLI example of creating an endpoint group, scroll down to Example.
    public func createEndpointGroup(_ input: CreateEndpointGroupRequest) throws -> Future<CreateEndpointGroupResponse> {
        return try client.send(operation: "CreateEndpointGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static IP addresses on a port, port range, or list of port ranges that you specify. To see an AWS CLI example of creating a listener, scroll down to Example.
    public func createListener(_ input: CreateListenerRequest) throws -> Future<CreateListenerResponse> {
        return try client.send(operation: "CreateListener", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete an accelerator. Note: before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups).
    @discardableResult public func deleteAccelerator(_ input: DeleteAcceleratorRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteAccelerator", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete an endpoint group from a listener.
    @discardableResult public func deleteEndpointGroup(_ input: DeleteEndpointGroupRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteEndpointGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete a listener from an accelerator.
    @discardableResult public func deleteListener(_ input: DeleteListenerRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteListener", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describe an accelerator. To see an AWS CLI example of describing an accelerator, scroll down to Example.
    public func describeAccelerator(_ input: DescribeAcceleratorRequest) throws -> Future<DescribeAcceleratorResponse> {
        return try client.send(operation: "DescribeAccelerator", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describe the attributes of an accelerator.
    public func describeAcceleratorAttributes(_ input: DescribeAcceleratorAttributesRequest) throws -> Future<DescribeAcceleratorAttributesResponse> {
        return try client.send(operation: "DescribeAcceleratorAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describe an endpoint group.
    public func describeEndpointGroup(_ input: DescribeEndpointGroupRequest) throws -> Future<DescribeEndpointGroupResponse> {
        return try client.send(operation: "DescribeEndpointGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describe a listener.
    public func describeListener(_ input: DescribeListenerRequest) throws -> Future<DescribeListenerResponse> {
        return try client.send(operation: "DescribeListener", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the accelerators for an AWS account.
    public func listAccelerators(_ input: ListAcceleratorsRequest) throws -> Future<ListAcceleratorsResponse> {
        return try client.send(operation: "ListAccelerators", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the endpoint groups that are associated with a listener.
    public func listEndpointGroups(_ input: ListEndpointGroupsRequest) throws -> Future<ListEndpointGroupsResponse> {
        return try client.send(operation: "ListEndpointGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the listeners for an accelerator.
    public func listListeners(_ input: ListListenersRequest) throws -> Future<ListListenersResponse> {
        return try client.send(operation: "ListListeners", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update an accelerator.
    public func updateAccelerator(_ input: UpdateAcceleratorRequest) throws -> Future<UpdateAcceleratorResponse> {
        return try client.send(operation: "UpdateAccelerator", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update the attributes for an accelerator. To see an AWS CLI example of updating an accelerator to enable flow logs, scroll down to Example.
    public func updateAcceleratorAttributes(_ input: UpdateAcceleratorAttributesRequest) throws -> Future<UpdateAcceleratorAttributesResponse> {
        return try client.send(operation: "UpdateAcceleratorAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update an endpoint group. To see an AWS CLI example of updating an endpoint group, scroll down to Example.
    public func updateEndpointGroup(_ input: UpdateEndpointGroupRequest) throws -> Future<UpdateEndpointGroupResponse> {
        return try client.send(operation: "UpdateEndpointGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update a listener.
    public func updateListener(_ input: UpdateListenerRequest) throws -> Future<UpdateListenerResponse> {
        return try client.send(operation: "UpdateListener", path: "/", httpMethod: "POST", input: input)
    }
}
