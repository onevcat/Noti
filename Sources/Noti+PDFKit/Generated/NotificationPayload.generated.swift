// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Noti
import PDFKit

extension PDFDocumentDidFindMatchNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        document = notification.object as! PDFDocument
        selection = notification.extract(key: PDFDocumentFoundSelection, type: PDFSelection.self)
    }
}

extension PDFDocumentNotificationPayload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        document = notification.object as! PDFDocument
    }
}

extension PDFDocumentPageNotificationPayload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        document = notification.object as! PDFDocument
        pageIndex = notification.extract(key: PDFDocumentPageIndex, type: NSNumber.self, transform: DataTransformer.to)
    }
}

extension PDFDocumentViewNotificationPayload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        view = notification.object as! PDFView
    }
}

extension PDFViewAnnotationHitNotification.Payload: PassiveNotificationPayload {
    public init(_ notification: Notification) {
        view = notification.object as! PDFView
        annotationHit = notification.extract(key: PDFAnnotationHit, type: PDFAnnotation.self)
    }
}

