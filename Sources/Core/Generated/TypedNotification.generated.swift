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

