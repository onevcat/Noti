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
public struct NSWillBecomeMultiThreadedNotification: AutoPassiveTypedNotification {}

public struct NSExtensionHostNotificationPayload: AutoPassiveNotificationPayload {
    //sourcery: object = true
    public let context: NSExtensionContext
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

public struct NSMetadataQueryDidFinishGatheringNotification: AutoPassiveTypedNotification {}
public struct NSMetadataQueryDidStartGatheringNotification: AutoPassiveTypedNotification {}
public struct NSMetadataQueryDidUpdateNotification: AutoPassiveTypedNotification {}
public struct NSMetadataQueryGatheringProgressNotification: AutoPassiveTypedNotification {}

public struct NSProcessInfoPowerStateDidChangeNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let processInfo: ProcessInfo
    }
}

public struct NSSystemClockDidChangeNotification: AutoPassiveTypedNotification {}
public struct NSSystemTimeZoneDidChangeNotification: AutoPassiveTypedNotification {}

public struct NSThreadWillExitNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let thread: Thread
    }
}

public struct NSURLCredentialStorageChangedNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let storage: URLCredentialStorage
    }
}

public struct NSUbiquityIdentityDidChangeNotification: AutoPassiveTypedNotification {}


public struct UndoManagerNotificationPayload: AutoPassiveNotificationPayload {
    //sourcery: object = true
    public let manager: UndoManager
}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerCheckpointNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerDidCloseUndoGroupNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerDidOpenUndoGroupNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerDidRedoChangeNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerDidUndoChangeNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerWillCloseUndoGroupNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerWillRedoChangeNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "UndoManagerNotificationPayload"
public struct NSUndoManagerWillUndoChangeNotification: AutoPassiveTypedNotification {}
