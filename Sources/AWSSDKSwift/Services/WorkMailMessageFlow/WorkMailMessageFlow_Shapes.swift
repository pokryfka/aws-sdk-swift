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

import AWSSDKSwiftCore
import Foundation

extension WorkMailMessageFlow {
    // MARK: Enums

    // MARK: Shapes

    public struct GetRawMessageContentRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "messageId", location: .uri(locationName: "messageId"))
        ]

        /// The identifier of the email message to retrieve.
        public let messageId: String

        public init(messageId: String) {
            self.messageId = messageId
        }

        public func validate(name: String) throws {
            try validate(self.messageId, name: "messageId", parent: name, max: 120)
            try validate(self.messageId, name: "messageId", parent: name, min: 1)
            try validate(self.messageId, name: "messageId", parent: name, pattern: "[a-z0-9\\-]*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRawMessageContentResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "messageContent"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw, .allowStreaming]

        /// The raw content of the email message, in MIME format.
        public let messageContent: AWSPayload

        public init(messageContent: AWSPayload) {
            self.messageContent = messageContent
        }

        private enum CodingKeys: String, CodingKey {
            case messageContent = "messageContent"
        }
    }
}
