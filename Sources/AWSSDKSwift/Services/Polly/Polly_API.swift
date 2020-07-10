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

/**
Client object for interacting with AWS Polly service.

Amazon Polly is a web service that makes it easy to synthesize speech from text. The Amazon Polly service provides API operations for synthesizing high-quality speech from plain text and Speech Synthesis Markup Language (SSML), along with managing pronunciations lexicons that enable you to get the best results for your application domain.
*/
public struct Polly {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Polly client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "polly",
            serviceProtocol: .restjson,
            apiVersion: "2016-06-10",
            endpoint: endpoint,
            possibleErrorTypes: [PollyErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the GetLexicon or ListLexicon APIs. For more information, see Managing Lexicons.
    public func deleteLexicon(_ input: DeleteLexiconInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLexiconOutput> {
        return client.execute(operation: "DeleteLexicon", path: "/v1/lexicons/{LexiconName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name.  When synthesizing speech ( SynthesizeSpeech ), you provide the voice ID for the voice you want from the list of voices returned by DescribeVoices. For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the DescribeVoices operation you can provide the user with a list of available voices to select from.  You can optionally specify a language code to filter the available voices. For example, if you specify en-US, the operation returns a list of all available US English voices.  This operation requires permissions to perform the polly:DescribeVoices action.
    public func describeVoices(_ input: DescribeVoicesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVoicesOutput> {
        return client.execute(operation: "DescribeVoices", path: "/v1/voices", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see Managing Lexicons.
    public func getLexicon(_ input: GetLexiconInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLexiconOutput> {
        return client.execute(operation: "GetLexicon", path: "/v1/lexicons/{LexiconName}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a specific SpeechSynthesisTask object based on its TaskID. This object contains information about the given speech synthesis task, including the status of the task, and a link to the S3 bucket containing the output of the task.
    public func getSpeechSynthesisTask(_ input: GetSpeechSynthesisTaskInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSpeechSynthesisTaskOutput> {
        return client.execute(operation: "GetSpeechSynthesisTask", path: "/v1/synthesisTasks/{TaskId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see Managing Lexicons.
    public func listLexicons(_ input: ListLexiconsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLexiconsOutput> {
        return client.execute(operation: "ListLexicons", path: "/v1/lexicons", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.
    public func listSpeechSynthesisTasks(_ input: ListSpeechSynthesisTasksInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSpeechSynthesisTasksOutput> {
        return client.execute(operation: "ListSpeechSynthesisTasks", path: "/v1/synthesisTasks", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same name already exists in the region, it is overwritten by the new lexicon. Lexicon operations have eventual consistency, therefore, it might take some time before the lexicon is available to the SynthesizeSpeech operation. For more information, see Managing Lexicons.
    public func putLexicon(_ input: PutLexiconInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutLexiconOutput> {
        return client.execute(operation: "PutLexicon", path: "/v1/lexicons/{LexiconName}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Allows the creation of an asynchronous synthesis task, by starting a new SpeechSynthesisTask. This operation requires all the standard information needed for speech synthesis, plus the name of an Amazon S3 bucket for the service to store the output of the synthesis task and two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the synthesis task is created, this operation will return a SpeechSynthesisTask object, which will include an identifier of this task as well as the current status.
    public func startSpeechSynthesisTask(_ input: StartSpeechSynthesisTaskInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSpeechSynthesisTaskOutput> {
        return client.execute(operation: "StartSpeechSynthesisTask", path: "/v1/synthesisTasks", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see How it Works.
    public func synthesizeSpeech(_ input: SynthesizeSpeechInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SynthesizeSpeechOutput> {
        return client.execute(operation: "SynthesizeSpeech", path: "/v1/speech", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    //MARK: Streaming API Calls

    ///  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see How it Works.
    public func synthesizeSpeechStreaming(_ input: SynthesizeSpeechInput, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop)->EventLoopFuture<Void>) -> EventLoopFuture<SynthesizeSpeechOutput> {
        return client.execute(operation: "SynthesizeSpeech", path: "/v1/speech", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, stream: stream)
    }
}
