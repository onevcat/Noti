// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation
import AVFoundation

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

