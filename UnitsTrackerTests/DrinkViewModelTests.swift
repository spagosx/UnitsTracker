//
//  DrinkViewModel.swift
//  UnitsTrackerTests
//
//  Created by degs on 30/09/2023.
//

import XCTest
@testable import UnitsTracker

final class DrinkViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_drinkViewModel_formatting() {
        let mockDate: Date = {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd/MM/yyyy"
            return formatter.date(from: "6/7/1990")!
        }()
        let drink = Drink(floz: 2.5012, proof: 107.213, units: 3.5567, date: mockDate)
        let sut = DrinkViewModel(drink: drink)
        XCTAssertEqual(sut.date, "7/6/90")
        XCTAssertEqual(sut.quantity, "2.50")
        XCTAssertEqual(sut.proof, "107.21")
        XCTAssertEqual(sut.units, "3.56")
    }
}
