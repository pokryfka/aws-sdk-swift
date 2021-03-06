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

/// Error enum for ApplicationInsights
public enum ApplicationInsightsErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case internalServerException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case tagsAlreadyExistException(message: String?)
    case tooManyTagsException(message: String?)
    case validationException(message: String?)
}

extension ApplicationInsightsErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TagsAlreadyExistException":
            self = .tagsAlreadyExistException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension ApplicationInsightsErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .internalServerException(let message):
            return "InternalServerException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tagsAlreadyExistException(let message):
            return "TagsAlreadyExistException: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTagsException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
