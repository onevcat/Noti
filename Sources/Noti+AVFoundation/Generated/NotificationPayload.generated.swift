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

extension AVCaptureDeviceNotificationPayload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        device = notification.object as! AVCaptureDevice
    }
}

extension AVCaptureSessionRuntimeErrorNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        error = notification.extract(key: AVCaptureSessionErrorKey, type: Error.self)
    }
}

extension AVPlayerItemFailedToPlayToEndTimeNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        item = notification.object as! AVPlayerItem
        error = notification.extract(key: AVPlayerItemFailedToPlayToEndTimeErrorKey, type: Error.self)
    }
}

extension AVPlayerItemNotificationPayload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        item = notification.object as! AVPlayerItem
    }
}

extension AVSampleBufferDisplayLayerFailedToDecodeNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        error = notification.extract(key: AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey, type: NSError.self)
    }
}

