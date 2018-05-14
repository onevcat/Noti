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

public struct NSFileHandleConnectionAcceptedNotification: AutoPassiveTypedNotification {
    public struct Payload: PassiveNotificationPayload {
        public let sender: FileHandle
        public let nearEnd: FileHandle?
        public let error: NSNumber?
        
        public init(_ notification: Notification) {
            sender = notification.object as! FileHandle
            nearEnd = notification.userInfo?[NSFileHandleNotificationFileHandleItem] as? FileHandle
            error = notification.userInfo?["NSFileHandleError"] as? NSNumber
        }
    }
}

public struct NSFileHandleDataAvailableNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let sender: FileHandle
    }
}

public struct NSFileHandleReadToEndOfFileCompletionNotification: AutoPassiveTypedNotification {
    public struct Payload: PassiveNotificationPayload {
        public let sender: FileHandle
        public let data: Data?
        public let error: NSNumber?
        
        public init(_ notification: Notification) {
            sender = notification.object as! FileHandle
            data = notification.userInfo?[NSFileHandleNotificationDataItem] as? Data
            error = notification.userInfo?["NSFileHandleError"] as? NSNumber
        }
    }
}

public struct NSHTTPCookieManagerAcceptPolicyChangedNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let storage: HTTPCookieStorage
    }
}

public struct NSHTTPCookieManagerCookiesChangedNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let storage: HTTPCookieStorage
    }
}


