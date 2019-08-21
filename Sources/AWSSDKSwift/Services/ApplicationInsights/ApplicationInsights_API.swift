// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon CloudWatch Application Insights for .NET and SQL Server  Amazon CloudWatch Application Insights for .NET and SQL Server is a service that helps you detect common problems with your .NET and SQL Server-based applications. It enables you to pinpoint the source of issues in your applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into detected problems. After you onboard your application, CloudWatch Application Insights for .NET and SQL Server identifies, recommends, and sets up metrics and logs. It continuously analyzes and correlates your metrics and logs for unusual behavior to surface actionable problems with your application. For example, if your application is slow and unresponsive and leading to HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you that a memory pressure problem with your SQL Server database is occurring. It bases this analysis on impactful metrics and log errors. 
*/
public struct ApplicationInsights {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "EC2WindowsBarleyService",
            service: "applicationinsights",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-25",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApplicationInsightsErrorType.self]
        )
    }

    ///  Adds an application that is created from a resource group.
    public func createApplication(_ input: CreateApplicationRequest) throws -> Future<CreateApplicationResponse> {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a custom component by grouping similar standalone instances to monitor.
    public func createComponent(_ input: CreateComponentRequest) throws -> Future<CreateComponentResponse> {
        return try client.send(operation: "CreateComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified application from monitoring. Does not delete the application.
    public func deleteApplication(_ input: DeleteApplicationRequest) throws -> Future<DeleteApplicationResponse> {
        return try client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.
    public func deleteComponent(_ input: DeleteComponentRequest) throws -> Future<DeleteComponentResponse> {
        return try client.send(operation: "DeleteComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the application.
    public func describeApplication(_ input: DescribeApplicationRequest) throws -> Future<DescribeApplicationResponse> {
        return try client.send(operation: "DescribeApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a component and lists the resources that are grouped together in a component.
    public func describeComponent(_ input: DescribeComponentRequest) throws -> Future<DescribeComponentResponse> {
        return try client.send(operation: "DescribeComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the monitoring configuration of the component.
    public func describeComponentConfiguration(_ input: DescribeComponentConfigurationRequest) throws -> Future<DescribeComponentConfigurationResponse> {
        return try client.send(operation: "DescribeComponentConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the recommended monitoring configuration of the component.
    public func describeComponentConfigurationRecommendation(_ input: DescribeComponentConfigurationRecommendationRequest) throws -> Future<DescribeComponentConfigurationRecommendationResponse> {
        return try client.send(operation: "DescribeComponentConfigurationRecommendation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes an anomaly or error with the application.
    public func describeObservation(_ input: DescribeObservationRequest) throws -> Future<DescribeObservationResponse> {
        return try client.send(operation: "DescribeObservation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes an application problem.
    public func describeProblem(_ input: DescribeProblemRequest) throws -> Future<DescribeProblemResponse> {
        return try client.send(operation: "DescribeProblem", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the anomalies or errors associated with the problem.
    public func describeProblemObservations(_ input: DescribeProblemObservationsRequest) throws -> Future<DescribeProblemObservationsResponse> {
        return try client.send(operation: "DescribeProblemObservations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the IDs of the applications that you are monitoring. 
    public func listApplications(_ input: ListApplicationsRequest) throws -> Future<ListApplicationsResponse> {
        return try client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the auto-grouped, standalone, and custom components of the application.
    public func listComponents(_ input: ListComponentsRequest) throws -> Future<ListComponentsResponse> {
        return try client.send(operation: "ListComponents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the problems with your application.
    public func listProblems(_ input: ListProblemsRequest) throws -> Future<ListProblemsResponse> {
        return try client.send(operation: "ListProblems", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the custom component name and/or the list of resources that make up the component.
    public func updateComponent(_ input: UpdateComponentRequest) throws -> Future<UpdateComponentResponse> {
        return try client.send(operation: "UpdateComponent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation.
    public func updateComponentConfiguration(_ input: UpdateComponentConfigurationRequest) throws -> Future<UpdateComponentConfigurationResponse> {
        return try client.send(operation: "UpdateComponentConfiguration", path: "/", httpMethod: "POST", input: input)
    }
}
