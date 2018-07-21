// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import NetworkExtension

extension NEFilterConfigurationDidChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NEFilterConfigurationDidChange
}

extension NEVPNConfigurationChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NEVPNConfigurationChange
}

extension NEVPNStatusDidChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NEVPNStatusDidChange
}

