// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for FMS
public enum FMSErrorType: AWSErrorType {
    case internalErrorException(message: String?)
    case invalidInputException(message: String?)
    case invalidOperationException(message: String?)
    case invalidTypeException(message: String?)
    case limitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension FMSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "InvalidTypeException":
            self = .invalidTypeException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}