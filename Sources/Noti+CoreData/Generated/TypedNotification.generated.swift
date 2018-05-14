// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import CoreData

extension NSManagedObjectContextDidSaveNotification: PassiveTypedNotification {
    public typealias Payload = NSManagedObjectContextPayload
    public static let name: Notification.Name = .NSManagedObjectContextDidSave
}

extension NSManagedObjectContextObjectsDidChangeNotification: PassiveTypedNotification {
    public typealias Payload = NSManagedObjectContextPayload
    public static let name: Notification.Name = .NSManagedObjectContextObjectsDidChange
}

extension NSManagedObjectContextWillSaveNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSManagedObjectContextWillSave
}

extension NSPersistentStoreCoordinatorStoresDidChangeNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSPersistentStoreCoordinatorStoresDidChange
}

extension NSPersistentStoreCoordinatorStoresWillChangeNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSPersistentStoreCoordinatorStoresWillChange
}

extension NSPersistentStoreCoordinatorWillRemoveStoreNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .NSPersistentStoreCoordinatorWillRemoveStore
}

