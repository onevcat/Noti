// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import AVFoundation

extension AVAudioSessionRouteChangeNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        changeReason = notification.extract(key: AVAudioSessionRouteChangeReasonKey, type: NSNumber.self, transform: DataTransformer.to)
        routeDescription = notification.extract(key: AVAudioSessionRouteChangePreviousRouteKey, type: AVAudioSessionRouteDescription.self)
    }
}

extension AVAudioSessionSilenceSecondaryAudioHintNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        type = notification.extract(key: AVAudioSessionSilenceSecondaryAudioHintTypeKey, type: NSNumber.self, transform: DataTransformer.to)
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

