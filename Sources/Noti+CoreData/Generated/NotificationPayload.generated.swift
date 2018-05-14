// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import CoreData

extension NSManagedObjectContextWillSaveNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        context = notification.object as! NSManagedObjectContext
    }
}

extension NSPersistentStoreCoordinatorStoresWillChangeNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        coordinator = notification.object as! NSPersistentStoreCoordinator
    }
}

extension NSPersistentStoreCoordinatorWillRemoveStoreNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        coordinator = notification.object as! NSPersistentStoreCoordinator
    }
}

