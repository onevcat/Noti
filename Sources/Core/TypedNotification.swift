//
//  TypedNotification.swift
//  Noti
//
//  Created by Wang Wei on 2018/5/11.
//

import Foundation

public protocol TypedNotification {
    associatedtype Payload: NotificationPayload
    static var name: Notification.Name { get }
    var payload: Payload { get }
}

extension TypedNotification {
    static var name: Notification.Name {
        return .init(rawValue: String(reflecting: Self.self))
    }
}

public protocol EmptyPayloadTypedNotification: TypedNotification
    where Payload == EmptyNotificationPayload { }
extension EmptyPayloadTypedNotification {
    public var payload: Payload { return .empty }
}
