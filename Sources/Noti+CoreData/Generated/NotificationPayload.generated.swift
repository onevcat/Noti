// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import CoreData

extension NSManagedObjectContextWillSaveNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        context = notification.object as! NSManagedObjectContext
    }
}

