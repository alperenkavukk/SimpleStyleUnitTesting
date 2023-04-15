//
//  swiftTestingTests.swift
//  swiftTestingTests
//
//  Created by Alperen Kavuk on 15.04.2023.
//

import XCTest
@testable import swiftTesting

final class swiftTestingTests: XCTestCase {

   let math = mathematicFuncetion()

    func testAddIntagerFunction()
    {
        let result = math.addIntegers(x: 10, y: 8)
        XCTAssertEqual(result, 18)
    }
    
}
