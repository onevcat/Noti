//
//  NotificationPayload.swift
//  Noti
//
//  Created by Wang Wei on 2018/5/11.
//

import Foundation

private let payloadEncoder = JSONEncoder()
private let payloadDecoder = JSONDecoder()

public protocol NotificationPayload {
    init(_ notification: Notification)
    var userInfo: [AnyHashable: Any] { get }
}

extension NotificationPayload where Self: Decodable {
    public init(_ notification: Notification) {
        guard let userInfo = notification.userInfo else {
            fatalError("""
                    [Noti] Received a `nil` userInfo. Maybe you are sending a customized notification with untyped API.
                    Please send typed notifications with Noti APIs instead of plain Cocoa APIs.
                    """)
        }
        
        do {
            let data = try JSONSerialization.data(withJSONObject: userInfo, options: [])
            self = try payloadDecoder.decode(Self.self, from: data)
        } catch {
            fatalError("[Noti] Trying to decode a notification but something wrong happens: \(error)")
        }
    }
}

extension NotificationPayload where Self: Encodable {
    var userInfo: [AnyHashable: Any] {
        let data = try! payloadEncoder.encode(self)
        return try! JSONSerialization.jsonObject(with: data, options: []) as! [AnyHashable: Any]
    }
}

public struct EmptyNotificationPayload: NotificationPayload {
    private init() {}
    static let empty = EmptyNotificationPayload()

    public init(_ notification: Notification) {}
    public var userInfo: [AnyHashable: Any] { return [:] }
}

extension Notification {
    func extract<T>(key: String, type: T.Type) -> T {
        return userInfo![key] as! T
    }
    
    func extract<T, U>(key: String, type: T.Type, transform: (T) -> U) -> U {
        let value = extract(key: key, type: type)
        return transform(value)
    }
}

// For auto generating of payload
protocol AutoNotificationPayload {}
