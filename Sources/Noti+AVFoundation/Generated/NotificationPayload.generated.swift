// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
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

