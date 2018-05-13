// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import AVFoundation

extension AVAudioEngineConfigurationChangeNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .AVAssetTrackTrackAssociationsDidChange
    
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

