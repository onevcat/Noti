//
//  CoreData.swift
//  NotiCoreData
//
//  Created by 王 巍 on 2018/5/14.
//

import Foundation
import Noti
import CoreData

public struct NSManagedObjectContextPayload: PassiveNotificationPayload {
    public let notification: Notification
    public let context: NSManagedObjectContext
    public let inserted: Set<NSManagedObject>
    public let updated: Set<NSManagedObject>
    public let deleted: Set<NSManagedObject>
    
    public init(_ notification: Notification) {
        self.notification = notification
        context = notification.object as! NSManagedObjectContext
        inserted = notification.userInfo?[NSInsertedObjectsKey] as? Set<NSManagedObject> ?? []
        updated = notification.userInfo?[NSUpdatedObjectsKey] as? Set<NSManagedObject> ?? []
        deleted = notification.userInfo?[NSDeletedObjectsKey] as? Set<NSManagedObject> ?? []
    }
}

//sourcery: payload = "NSManagedObjectContextPayload"
public struct NSManagedObjectContextDidSaveNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "NSManagedObjectContextPayload"
public struct NSManagedObjectContextObjectsDidChangeNotification: AutoPassiveTypedNotification {}

public struct NSManagedObjectContextWillSaveNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let context: NSManagedObjectContext
    }
}

public struct NSPersistentStoreCoordinatorStoresDidChangeNotification: AutoPassiveTypedNotification {
    public struct Payload: PassiveNotificationPayload {
        public let coordinator: NSPersistentStoreCoordinator
        public let added: [NSPersistentStore]
        public let removed: [NSPersistentStore]
        public let UUIDChanged: [NSPersistentStore]
        
        public init(_ notification: Notification) {
            self.coordinator = notification.object as! NSPersistentStoreCoordinator
            self.added = notification.userInfo?[NSAddedPersistentStoresKey] as? [NSPersistentStore] ?? []
            self.removed = notification.userInfo?[NSRemovedPersistentStoresKey] as? [NSPersistentStore] ?? []
            self.UUIDChanged = notification.userInfo?[NSUUIDChangedPersistentStoresKey] as? [NSPersistentStore] ?? []
        }
    }
}

public struct NSPersistentStoreCoordinatorStoresWillChangeNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let coordinator: NSPersistentStoreCoordinator
    }
}

public struct NSPersistentStoreCoordinatorWillRemoveStoreNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let coordinator: NSPersistentStoreCoordinator
    }
}

