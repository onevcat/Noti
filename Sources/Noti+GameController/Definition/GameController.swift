//
//  GameController.swift
//  NotiGameController
//
//  Created by Wang Wei on 2018/5/15.
//

import Foundation
import Noti
import GameController

public struct GCControllerNotificationPayload: AutoPassiveNotificationPayload {
    //sourcery: object = true
    public let controller: GCController
}

//sourcery: payload = "GCControllerNotificationPayload"
public struct GCControllerDidConnectNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "GCControllerNotificationPayload"
public struct GCControllerDidDisconnectNotification: AutoPassiveTypedNotification {}
