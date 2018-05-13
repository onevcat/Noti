//
//  Bundle.swift
//  Noti
//
//  Created by 王 巍 on 2018/5/14.
//

import Foundation

public struct NSBundleResourceRequestLowDiskSpaceNotification: AutoPassiveTypedNotification {}
public struct NSCalendarDayChangedNotification: AutoPassiveTypedNotification {}
public struct NSDidBecomeSingleThreadedNotification: AutoPassiveTypedNotification {}

public struct NSExtensionHostNotificationPayload: PassiveNotificationPayload {
    public let context: NSExtensionContext
    public init(_ notification: Notification) {
        context = notification.object as! NSExtensionContext
    }
}
//sourcery: payload = "NSExtensionHostNotificationPayload"
public struct NSExtensionHostDidBecomeActiveNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "NSExtensionHostNotificationPayload"
public struct NSExtensionHostDidEnterBackgroundNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "NSExtensionHostNotificationPayload"
public struct NSExtensionHostWillEnterForegroundNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "NSExtensionHostNotificationPayload"
public struct NSExtensionHostWillResignActiveNotification: AutoPassiveTypedNotification {}
