//
//  CalculatorTests.swift
//  UnitsTrackerTests
//
//  Created by degs on 18/07/2023.
//

import XCTest
@testable import UnitsTracker

final class CalculatorTests: XCTestCase {

    let sut = UnitsCalculator()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_calculate_1_5oz_80_proof() {
        let units = sut.unitsFrom(floz: 1.5, proof: 80) // 1.77
        XCTAssertEqual(units, 1.77, accuracy: 0.01)
    }
    
    func test_calculate_1_5oz_90_proof() {
        let units = sut.unitsFrom(floz: 1.5, proof: 90) // 1.99
        XCTAssertEqual(units, 1.99, accuracy: 0.1)
    }

}
