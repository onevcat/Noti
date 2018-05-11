//
//  DataTransformerTests.swift
//  NotiTests
//
//  Created by Wang Wei on 2018/5/11.
//

import Foundation

import XCTest
@testable import Noti

class DataTransformerTests: XCTestCase {
    
    func testNSNumberBoolTransform() {
        let numbers = [0, 1]
        let resultBools: [Bool] = numbers.map(NSNumber.init).map(DataTransformer.to)
        XCTAssertEqual(resultBools, [false, true])
        
        let bools = [false, true]
        let resultNumbers = bools.map { $0 as NSNumber }
        XCTAssertEqual(resultNumbers[0].boolValue, false)
        XCTAssertEqual(resultNumbers[1].boolValue, true)
    }
    
    func testNSNumberIntTransform() {
        let numbers = [123, -123]
        let resultInts: [Int] = numbers.map(NSNumber.init).map(DataTransformer.to)
        XCTAssertEqual(resultInts, [123, -123])
        
        let ints = [456, -456]
        let resultNumbers = ints.map { $0 as NSNumber }
        XCTAssertEqual(resultNumbers[0].intValue, 456)
        XCTAssertEqual(resultNumbers[1].intValue, -456)
    }
    
    func testNSNumberFloatTransform() {
        let numbers = [123.4, -123.4]
        let resultFloats: [Float] = numbers.map(NSNumber.init).map(DataTransformer.to)
        XCTAssertEqual(resultFloats, [123.4, -123.4])
        
        let ints = [456.7, -456.7]
        let resultNumbers = ints.map { $0 as NSNumber }
        XCTAssertEqual(resultNumbers[0].floatValue, 456.7)
        XCTAssertEqual(resultNumbers[1].floatValue, -456.7)
    }
}
