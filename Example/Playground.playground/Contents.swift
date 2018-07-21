//
//  Playground.playground
//  Noti
//
//  Copyright © 2016 OneV's Den. All rights reserved.
//

//: Playground - noun: a place where people can play

import UIKit

// For Request and Response defination, see https://onevcat.com/2016/12/pop-cocoa-2/

// Define the possible requests
protocol Request {
    // Every request should have a corresponding Response
    // Here we want all response could contain error cases
    associatedtype Response: ErrorResponsable & Decodable
    //...
}

// A response which could contain error case.
protocol ErrorResponsable {
    // Error Responsable require a definition of a
    // structured representation of error, eg, it could be a JSON
    associatedtype Error: ResponseError
}

protocol ResponseError {
    // A method to parse response data to error
    static func parse(from data: Data) -> Self?
}

// Shortcut for those errors could be represented by `Decodable`
extension ResponseError where Self: Decodable {
    static func parse(from data: Data) -> Self? {
        return try? JSONDecoder().decode(Self.self, from: data)
    }
}

// Response of User Request.
// Normal: {id: 1, name: "Wei Wang"}
// Possible Error: {"statusCode": 404, "message": "not found"} or {"statusCode": 401, "message": "Permission Denied"}
struct User: ErrorResponsable, Decodable {
    
    // Possible error of User
    struct Error: ResponseError, Decodable {
        let statusCode: Int
        let message: String
    }

    let id: Int
    let name: String
}

struct GetUserRequest: Request {
    typealias Response = User
    // ...
    init(id: Int) { /*...*/ }
}


GetUserRequest(id: 1).send()
    .then { user in
        print(user.name)
    }.catch { error in
        // .responseParsingError is thrown by response parser, when the HTTP response body data
        // cannot be parsed to normal User object. When it happens, it might be due to server returning
        // an error response. This error is associated with the response data so we could handle it.
        if case .responseParsingError(let data) = error,
           let userError = User.Error.parse(from: data) // Parse the error from data
        {
            print(userError.statusCode)
        } else {
            // Not responseParsingError or cannot be parsed to User.Error. Something else happened.
        }
    }
