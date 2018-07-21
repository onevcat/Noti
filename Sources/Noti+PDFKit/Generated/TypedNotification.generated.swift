// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import PDFKit

extension PDFDocumentDidBeginFindNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidBeginFind
}

extension PDFDocumentDidBeginPageFindNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentPageNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidBeginPageFind
}

extension PDFDocumentDidBeginPageWriteNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentPageNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidBeginPageWrite
}

extension PDFDocumentDidBeginWriteNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidBeginWrite
}

extension PDFDocumentDidEndFindNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidEndFind
}

extension PDFDocumentDidEndPageFindNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentPageNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidEndPageFind
}

extension PDFDocumentDidEndPageWriteNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentPageNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidEndPageWrite
}

extension PDFDocumentDidEndWriteNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidEndWrite
}

extension PDFDocumentDidFindMatchNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .PDFDocumentDidFindMatch
}

extension PDFDocumentDidUnlockNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentNotificationPayload
    public static let name: Notification.Name = .PDFDocumentDidUnlock
}

extension PDFThumbnailViewDocumentEditedNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .PDFThumbnailViewDocumentEdited
}

extension PDFViewAnnotationHitNotification: PassiveTypedNotification {
    public static let name: Notification.Name = .PDFViewAnnotationHit
}

extension PDFViewAnnotationWillHitNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewAnnotationWillHit
}

extension PDFViewChangedHistoryNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewChangedHistory
}

extension PDFViewCopyPermissionNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewCopyPermission
}

extension PDFViewDisplayBoxChangedNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewDisplayBoxChanged
}

extension PDFViewDisplayModeChangedNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewDisplayModeChanged
}

extension PDFViewDocumentChangedNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewDocumentChanged
}

extension PDFViewPageChangedNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewPageChanged
}

extension PDFViewPrintPermissionNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewPrintPermission
}

extension PDFViewScaleChangedNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewScaleChanged
}

extension PDFViewSelectionChangedNotification: PassiveTypedNotification {
    public typealias Payload = PDFDocumentViewNotificationPayload
    public static let name: Notification.Name = .PDFViewSelectionChanged
}

extension PDFViewVisiblePagesChangedNotification: EmptyPayloadPassiveTypedNotification {
    public static let name: Notification.Name = .PDFViewVisiblePagesChanged
}

