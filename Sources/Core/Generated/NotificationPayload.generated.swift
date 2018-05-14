// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



extension NSFileHandleDataAvailableNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        sender = notification.object as! FileHandle
    }
}

extension NSHTTPCookieManagerAcceptPolicyChangedNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        storage = notification.object as! HTTPCookieStorage
    }
}

extension UIKeyboardNotificationPayload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        animationCurve = notification.extract(key: UIKeyboardAnimationCurveUserInfoKey, type: NSNumber.self, transform: DataTransformer.to)
        animationDuration = notification.extract(key: UIKeyboardAnimationDurationUserInfoKey, type: NSNumber.self, transform: DataTransformer.to)
        isLocal = notification.extract(key: UIKeyboardIsLocalUserInfoKey, type: NSNumber.self, transform: DataTransformer.to)
        frameBegin = notification.extract(key: UIKeyboardFrameBeginUserInfoKey, type: NSValue.self, transform: DataTransformer.to)
        frameEnd = notification.extract(key: UIKeyboardFrameEndUserInfoKey, type: NSValue.self, transform: DataTransformer.to)
    }
}

