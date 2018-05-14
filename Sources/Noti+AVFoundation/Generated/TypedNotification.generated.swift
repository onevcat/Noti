// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import AVFoundation

extension AVAssetChapterMetadataGroupsDidChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAssetChapterMetadataGroupsDidChange
}

extension AVAssetDurationDidChange: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAssetDurationDidChange
}

extension AVAssetMediaSelectionGroupsDidChange: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAssetMediaSelectionGroupsDidChange
}

extension AVAssetTrackSegmentsDidChange: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAssetTrackSegmentsDidChange
}

extension AVAssetTrackTimeRangeDidChange: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAssetTrackTimeRangeDidChange
}

extension AVAssetTrackTrackAssociationsDidChange: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAssetTrackTrackAssociationsDidChange
}

extension AVAudioEngineConfigurationChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAudioEngineConfigurationChange
}

extension AVAudioSessionInterruptionNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .AVAudioSessionInterruption
}

extension AVAudioSessionMediaServicesWereLostNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAudioSessionMediaServicesWereLost
}

extension AVAudioSessionMediaServicesWereResetNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAudioSessionMediaServicesWereReset
}

extension AVAudioSessionRouteChangeNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .AVAudioSessionRouteChange
}

extension AVAudioSessionSilenceSecondaryAudioHintNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .AVAudioSessionSilenceSecondaryAudioHint
}

extension AVAudioUnitComponentTagsDidChangeNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .AVAudioUnitComponentTagsDidChange
}

extension AVCaptureDeviceWasConnectedNotification: PassiveTypedNotification {
    public typealias Payload = AVCaptureDeviceNotificationPayload
    public static let name: Notification.Name = .AVCaptureDeviceWasConnected
}

extension AVCaptureDeviceWasDisconnectedNotification: PassiveTypedNotification {
    public typealias Payload = AVCaptureDeviceNotificationPayload
    public static let name: Notification.Name = .AVCaptureDeviceWasDisconnected
}

extension AVCaptureInputPortFormatDescriptionDidChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVCaptureInputPortFormatDescriptionDidChange
}

extension AVCaptureSessionDidStartRunningNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVCaptureSessionDidStartRunning
}

extension AVCaptureSessionDidStopRunningNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVCaptureSessionDidStopRunning
}

extension AVCaptureSessionRuntimeErrorNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .AVCaptureSessionRuntimeError
}

extension AVPlayerItemDidPlayToEndTimeNotification: PassiveTypedNotification {
    public typealias Payload = AVPlayerItemNotificationPayload
    public static let name: Notification.Name = .AVPlayerItemDidPlayToEndTime
}

extension AVPlayerItemFailedToPlayToEndTimeNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .AVPlayerItemFailedToPlayToEndTime
}

extension AVPlayerItemNewAccessLogEntryNotification: PassiveTypedNotification {
    public typealias Payload = AVPlayerItemNotificationPayload
    public static let name: Notification.Name = .AVPlayerItemNewAccessLogEntry
}

extension AVPlayerItemNewErrorLogEntryNotification: PassiveTypedNotification {
    public typealias Payload = AVPlayerItemNotificationPayload
    public static let name: Notification.Name = .AVPlayerItemNewErrorLogEntry
}

extension AVPlayerItemPlaybackStalledNotification: PassiveTypedNotification {
    public typealias Payload = AVPlayerItemNotificationPayload
    public static let name: Notification.Name = .AVPlayerItemPlaybackStalled
}

extension AVPlayerItemTimeJumpedNotification: PassiveTypedNotification {
    public typealias Payload = AVPlayerItemNotificationPayload
    public static let name: Notification.Name = .AVPlayerItemTimeJumped
}

extension AVSampleBufferDisplayLayerFailedToDecodeNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .AVSampleBufferDisplayLayerFailedToDecode
}

