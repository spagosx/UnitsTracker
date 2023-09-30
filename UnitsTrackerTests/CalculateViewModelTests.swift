//
//  CalculateViewModelTests.swift
//  UnitsTrackerTests
//
//  Created by degs on 30/09/2023.
//

import XCTest
@testable import UnitsTracker

final class CalculateViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_calculateViewModel_talksToCalculator() {
        let mockCalculator = MockCalculator()
        let sut = CalculateViewModel(calculator: mockCalculator)
        sut.calculatePressed(ounces: "2", proof: "80")
        XCTAssertEqual(mockCalculator.spyUnitsFrom.count, 1)
        XCTAssertEqual(mockCalculator.spyUnitsFrom.first?.floz, 2)
        XCTAssertEqual(mockCalculator.spyUnitsFrom.first?.proof, 80)
        XCTAssertEqual(sut.calculatedUnits, "2.50")
    }
}

final class MockCalculator: UnitsCalculating {
    
    var calculationToReturn = 2.5
    var spyUnitsFrom: [(floz: Double, proof: Double)] = []
    func unitsFrom(floz: Double, proof: Double) -> Double {
        spyUnitsFrom.append((floz, proof))
        return calculationToReturn
    }
}
