// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



extension NSBundleResourceRequestLowDiskSpaceNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSBundleResourceRequestLowDiskSpace
}

extension NSCalendarDayChangedNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSCalendarDayChanged
}

extension NSDidBecomeSingleThreadedNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSDidBecomeSingleThreaded
}

extension NSExtensionHostDidBecomeActiveNotification: PassiveTypedNotification {
    public typealias Payload = NSExtensionHostNotificationPayload
    public static let name: Notification.Name = .NSExtensionHostDidBecomeActive
}

extension NSExtensionHostDidEnterBackgroundNotification: PassiveTypedNotification {
    public typealias Payload = NSExtensionHostNotificationPayload
    public static let name: Notification.Name = .NSExtensionHostDidEnterBackground
}

extension NSExtensionHostWillEnterForegroundNotification: PassiveTypedNotification {
    public typealias Payload = NSExtensionHostNotificationPayload
    public static let name: Notification.Name = .NSExtensionHostWillEnterForeground
}

extension NSExtensionHostWillResignActiveNotification: PassiveTypedNotification {
    public typealias Payload = NSExtensionHostNotificationPayload
    public static let name: Notification.Name = .NSExtensionHostWillResignActive
}

extension NSFileHandleConnectionAcceptedNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSFileHandleConnectionAccepted
}

extension NSFileHandleDataAvailableNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSFileHandleDataAvailable
}

extension NSFileHandleReadToEndOfFileCompletionNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSFileHandleReadToEndOfFileCompletion
}

extension NSHTTPCookieManagerAcceptPolicyChangedNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSHTTPCookieManagerAcceptPolicyChanged
}

extension NSHTTPCookieManagerCookiesChangedNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSHTTPCookieManagerCookiesChanged
}

extension NSMetadataQueryDidFinishGatheringNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSMetadataQueryDidFinishGathering
}

extension NSMetadataQueryDidStartGatheringNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSMetadataQueryDidStartGathering
}

extension NSMetadataQueryDidUpdateNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSMetadataQueryDidUpdate
}

extension NSMetadataQueryGatheringProgressNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSMetadataQueryGatheringProgress
}

extension NSProcessInfoPowerStateDidChangeNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSProcessInfoPowerStateDidChange
}

extension NSSystemClockDidChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSSystemClockDidChange
}

extension NSSystemTimeZoneDidChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSSystemTimeZoneDidChange
}

extension NSThreadWillExitNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSThreadWillExit
}

extension NSURLCredentialStorageChangedNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSURLCredentialStorageChanged
}

extension NSUbiquityIdentityDidChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .NSUbiquityIdentityDidChange
}

extension NSUndoManagerCheckpointNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerCheckpoint
}

extension NSUndoManagerDidCloseUndoGroupNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerDidCloseUndoGroup
}

extension NSUndoManagerDidOpenUndoGroupNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerDidOpenUndoGroup
}

extension NSUndoManagerDidRedoChangeNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerDidRedoChange
}

extension NSUndoManagerDidUndoChangeNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerDidUndoChange
}

extension NSUndoManagerWillCloseUndoGroupNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerWillCloseUndoGroup
}

extension NSUndoManagerWillRedoChangeNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerWillRedoChange
}

extension NSUndoManagerWillUndoChangeNotification: PassiveTypedNotification {
    public typealias Payload = UndoManagerNotificationPayload
    public static let name: Notification.Name = .NSUndoManagerWillUndoChange
}

extension UIKeyboardDidChangeFrameNotification: PassiveTypedNotification {
    public typealias Payload = UIKeyboardNotificationPayload
    public static let name: Notification.Name = .UIKeyboardDidChangeFrame
}

extension UIKeyboardDidHideNotification: PassiveTypedNotification {
    public typealias Payload = UIKeyboardNotificationPayload
    public static let name: Notification.Name = .UIKeyboardDidHide
}

extension UIKeyboardDidShowNotification: PassiveTypedNotification {
    public typealias Payload = UIKeyboardNotificationPayload
    public static let name: Notification.Name = .UIKeyboardDidShow
}

extension UIKeyboardWillChangeFrameNotification: PassiveTypedNotification {
    public typealias Payload = UIKeyboardNotificationPayload
    public static let name: Notification.Name = .UIKeyboardWillChangeFrame
}

extension UIKeyboardWillHideNotification: PassiveTypedNotification {
    public typealias Payload = UIKeyboardNotificationPayload
    public static let name: Notification.Name = .UIKeyboardWillHide
}

extension UIKeyboardWillShowNotification: PassiveTypedNotification {
    public typealias Payload = UIKeyboardNotificationPayload
    public static let name: Notification.Name = .UIKeyboardWillShow
}

