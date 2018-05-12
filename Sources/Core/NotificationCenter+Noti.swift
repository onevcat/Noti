//
//  NotificationCenter+Noti.swift
//  Noti
//
//  Created by Wang Wei on 2018/5/11.
//

import Foundation

extension NotificationCenter {
    public func addObserver<T: PassiveTypedNotification, Observer: AnyObject>(
        forType notificationType: T.Type,
        on observer: Observer,
        object: Any? = nil,
        queue: OperationQueue? = nil,
        using block: @escaping (Observer, T.Payload) -> Void) -> NotificationToken
    {
        let token = addObserver(forName: T.name, object: object, queue: queue) { [weak observer] noti in
            guard let observer = observer else { return }
            let payload = T.Payload(noti)
            block(observer, payload)
        }
        return .init(token: token, in: self)
    }
    
    public func addObserver<T: PassiveTypedNotification, Observer: Any>(
        forType notificationType: T.Type,
        on observer: Observer,
        object: Any? = nil,
        queue: OperationQueue? = nil,
        using block: @escaping (Observer, T.Payload) -> Void) -> NotificationToken
    {
        let token = addObserver(forName: T.name, object: object, queue: queue) { noti in
            let payload = T.Payload(noti)
            block(observer, payload)
        }
        return .init(token: token, in: self)
    }
    
    public func addObserver<T: PassiveTypedNotification, Observer: AnyObject>(
        forType notificationType: T.Type,
        on observer: Observer,
        object: Any? = nil,
        queue: OperationQueue? = nil,
        using block: @escaping (Observer) -> Void) -> NotificationToken where T.Payload == EmptyNotificationPayload
    {
        let token = addObserver(forName: T.name, object: object, queue: queue) { [weak observer] noti in
            guard let observer = observer else { return }
            block(observer)
        }
        return .init(token: token, in: self)
    }
    
    public func addObserver<T: PassiveTypedNotification, Observer: Any>(
        forType notificationType: T.Type,
        on observer: Observer,
        object: Any? = nil,
        queue: OperationQueue? = nil,
        using block: @escaping (Observer) -> Void) -> NotificationToken where T.Payload == EmptyNotificationPayload
    {
        let token = addObserver(forName: T.name, object: object, queue: queue) { noti in
            block(observer)
        }
        return .init(token: token, in: self)
    }
    
    public func post<T: TypedNotification>(typedNotification notification: T, object: Any? = nil) {
        let userInfo = notification.payload.userInfo
        post(name: T.name, object: object, userInfo: userInfo)
    }
    
    public func post<T: TypedNotification>(typedNotification notification: T.Type, object: Any? = nil)
        where T.Payload == EmptyNotificationPayload
    {
        post(name: T.name, object: object, userInfo: nil)
    }

}
