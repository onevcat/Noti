//
//  DataTransformer.swift
//  Noti
//
//  Created by Wang Wei on 2018/5/11.
//

import Foundation
import AVFoundation

struct DataTransformer {
    #if canImport(UIKit)
    static func to(from number: NSNumber) -> UIViewAnimationCurve {
        return UIViewAnimationCurve(rawValue: number.intValue) ?? .easeIn
    }
    
    static func to(from curve: UIViewAnimationCurve) -> NSNumber {
        return NSNumber(value: curve.rawValue)
    }
    #endif
    
    static func to(from number: NSNumber) -> Int {
        return number.intValue
    }
    
    static func to(from number: NSNumber) -> Bool {
        return number.boolValue
    }
    
    static func to(from number: NSNumber) -> Float {
        return number.floatValue
    }
    
    static func to(from number: NSNumber) -> Double {
        return number.doubleValue
    }
    
    static func to(from value: NSValue) -> CGRect {
        return value.cgRectValue
    }
}
