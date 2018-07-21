// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import GameController

extension GCControllerDidConnectNotification: PassiveTypedNotification {
    public typealias Payload = GCControllerNotificationPayload
    public static let name: Notification.Name = .GCControllerDidConnect
}

extension GCControllerDidDisconnectNotification: PassiveTypedNotification {
    public typealias Payload = GCControllerNotificationPayload
    public static let name: Notification.Name = .GCControllerDidDisconnect
}

