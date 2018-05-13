//
//  Audio.swift
//  Noti
//
//  Created by 王 巍 on 2018/5/12.
//

import Foundation
import AVFoundation

public struct AVAudioEngineConfigurationChangeNotification: AutoPassiveTypedNotification {}

public struct AVAudioSessionInterruptionNotification: AutoPassiveTypedNotification {
    public struct Payload: PassiveNotificationPayload {
        public enum InterruptionType {
            case began(wasSuspended: Bool)
            case ended(options: AVAudioSessionInterruptionOptions)
        }
        
        public let type: InterruptionType
        
        public init(_ notification: Notification) {
            let userInfo = notification.userInfo!
            let type = (userInfo[AVAudioSessionInterruptionTypeKey] as! NSNumber).uintValue
            switch AVAudioSessionInterruptionType(rawValue: type)! {
            case .began:
                let wasSuspended: Bool
                if #available(iOS 10.3, *) {
                    wasSuspended = (userInfo[AVAudioSessionInterruptionWasSuspendedKey] as! NSNumber).boolValue
                } else {
                    wasSuspended = false
                }
                self.type = .began(wasSuspended: wasSuspended)
            case .ended:
                let optionsFlag = (userInfo[AVAudioSessionInterruptionOptionKey] as! NSNumber).uintValue
                self.type = .ended(options: AVAudioSessionInterruptionOptions(rawValue: optionsFlag))
            }
        }
    }
}

public struct AVAudioSessionMediaServicesWereLostNotification: AutoPassiveTypedNotification {}

public struct AVAudioSessionMediaServicesWereResetNotification: AutoPassiveTypedNotification {}

public struct AVAudioSessionRouteChangeNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: key = "AVAudioSessionRouteChangeReasonKey"
        //sourcery: type = "NSNumber"
        public let changeReason: AVAudioSessionRouteChangeReason
        //sourcery: key = "AVAudioSessionRouteChangePreviousRouteKey"
        public let routeDescription: AVAudioSessionRouteDescription
    }
}
extension DataTransformer {
    static func to(from value: NSNumber) -> AVAudioSessionRouteChangeReason {
        return AVAudioSessionRouteChangeReason(rawValue: value.uintValue) ?? .unknown
    }
}

public struct AVAudioSessionSilenceSecondaryAudioHintNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: key = "AVAudioSessionSilenceSecondaryAudioHintTypeKey"
        //sourcery: type = "NSNumber"
        public let type: AVAudioSessionSilenceSecondaryAudioHintType
    }
}
extension DataTransformer {
    static func to(from value: NSNumber) -> AVAudioSessionSilenceSecondaryAudioHintType {
        return AVAudioSessionSilenceSecondaryAudioHintType(rawValue: value.uintValue)!
    }
}

public struct AVAudioUnitComponentTagsDidChangeNotification: AutoPassiveTypedNotification {
    public struct Payload: PassiveNotificationPayload {
        public let component: AVAudioUnitComponent
        public init(_ notification: Notification) {
            component = notification.object as! AVAudioUnitComponent
        }
    }
}

