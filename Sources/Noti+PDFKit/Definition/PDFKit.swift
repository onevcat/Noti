//
//  PDFKit.swift
//  NotiPDFKit
//
//  Created by Wang Wei on 2018/5/21.
//

import Foundation
import PDFKit
import Noti

public struct PDFDocumentNotificationPayload: AutoPassiveNotificationPayload {
    //sourcery: object = true
    public let document: PDFDocument
}

let PDFDocumentPageIndex = "PDFDocumentPageIndex"
public struct PDFDocumentPageNotificationPayload: AutoPassiveNotificationPayload {
    //sourcery: object = true
    public let document: PDFDocument
    //sourcery: key = "PDFDocumentPageIndex"
    //sourcery: type = "NSNumber"
    public let pageIndex: Int
}

public struct PDFDocumentViewNotificationPayload: AutoPassiveNotificationPayload {
    //sourcery: object = true
    public let view: PDFView
}

//sourcery: payload = "PDFDocumentNotificationPayload"
public struct PDFDocumentDidBeginFindNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentNotificationPayload"
public struct PDFDocumentDidEndFindNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentNotificationPayload"
public struct PDFDocumentDidBeginWriteNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentNotificationPayload"
public struct PDFDocumentDidEndWriteNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentNotificationPayload"
public struct PDFDocumentDidUnlockNotification: AutoPassiveTypedNotification {}

//sourcery: payload = "PDFDocumentPageNotificationPayload"
public struct PDFDocumentDidBeginPageFindNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentPageNotificationPayload"
public struct PDFDocumentDidEndPageFindNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentPageNotificationPayload"
public struct PDFDocumentDidBeginPageWriteNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentPageNotificationPayload"
public struct PDFDocumentDidEndPageWriteNotification: AutoPassiveTypedNotification {}

let PDFDocumentFoundSelection = "PDFDocumentFoundSelection"
public struct PDFDocumentDidFindMatchNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let document: PDFDocument
        //sourcery: key = "PDFDocumentFoundSelection"
        public let selection: PDFSelection
    }
}

public struct PDFThumbnailViewDocumentEditedNotification: AutoPassiveTypedNotification {}
public struct PDFViewVisiblePagesChangedNotification: AutoPassiveTypedNotification {}

let PDFAnnotationHit = "PDFAnnotationHit"
public struct PDFViewAnnotationHitNotification: AutoPassiveTypedNotification {
    public struct Payload: AutoPassiveNotificationPayload {
        //sourcery: object = true
        public let view: PDFView
        //sourcery: key = "PDFAnnotationHit"
        public let annotationHit: PDFAnnotation
    }
}

//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewAnnotationWillHitNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewChangedHistoryNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewCopyPermissionNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewDisplayBoxChangedNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewDisplayModeChangedNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewDocumentChangedNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewPageChangedNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewPrintPermissionNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewScaleChangedNotification: AutoPassiveTypedNotification {}
//sourcery: payload = "PDFDocumentViewNotificationPayload"
public struct PDFViewSelectionChangedNotification: AutoPassiveTypedNotification {}

