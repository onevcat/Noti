//
//  DataTransformer.swift
//  Noti
//
//  Created by Wang Wei on 2018/5/11.
//

import Foundation

public struct DataTransformer {
    #if canImport(UIKit)
    public static func to(from number: NSNumber) -> UIViewAnimationCurve {
        return UIViewAnimationCurve(rawValue: number.intValue) ?? .easeIn
    }
    
    public static func to(from curve: UIViewAnimationCurve) -> NSNumber {
        return NSNumber(value: curve.rawValue)
    }
    #endif
    
    public static func to(from number: NSNumber) -> Int {
        return number.intValue
    }
    
    public static func to(from number: NSNumber) -> Bool {
        return number.boolValue
    }
    
    public static func to(from number: NSNumber) -> Float {
        return number.floatValue
    }
    
    public static func to(from number: NSNumber) -> Double {
        return number.doubleValue
    }
    
    public static func to(from value: NSValue) -> CGRect {
        return value.cgRectValue
    }
}
