// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension UIKeyboardNotificationPayload: NotificationPayload {
    public init(_ notification: Notification) {
        animationCurve = notification.extract(key: UIKeyboardAnimationCurveUserInfoKey, type: NSNumber.self, transform: DataTransformer.to)
        animationDuration = notification.extract(key: UIKeyboardAnimationDurationUserInfoKey, type: NSNumber.self, transform: DataTransformer.to)
        isLocal = notification.extract(key: UIKeyboardIsLocalUserInfoKey, type: NSNumber.self, transform: DataTransformer.to)
        frameBegin = notification.extract(key: UIKeyboardFrameBeginUserInfoKey, type: NSValue.self, transform: DataTransformer.to)
        frameEnd = notification.extract(key: UIKeyboardFrameEndUserInfoKey, type: NSValue.self, transform: DataTransformer.to)
    }

    public var userInfo: [AnyHashable : Any] {
        return [
            UIKeyboardAnimationCurveUserInfoKey: animationCurve,
            UIKeyboardAnimationDurationUserInfoKey: animationDuration,
            UIKeyboardIsLocalUserInfoKey: isLocal,
            UIKeyboardFrameBeginUserInfoKey: frameBegin,
            UIKeyboardFrameEndUserInfoKey: frameEnd
        ]
    }
}

