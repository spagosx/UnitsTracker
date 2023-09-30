//
//  DrinksListViewModelTests.swift
//  UnitsTrackerTests
//
//  Created by degs on 30/09/2023.
//

import XCTest
@testable import UnitsTracker

final class DrinksListViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_viewModel_subscribesToStore() {
        let drinksStore = DrinksStore()
        let sut = DrinksListViewModel(drinksStore: drinksStore)
        XCTAssertEqual(sut.drinks, drinksStore.storedObjects.value.map {
            DrinkViewModel(drink: $0)
        })
        
        let addedDrink = Drink(floz: 1,
                               proof: 100,
                               units: 3,
                               date: Date())
        
        drinksStore.add(drink: addedDrink)
        
        XCTAssertEqual(sut.drinks.last!, DrinkViewModel(drink: addedDrink))
    }
}

extension DrinkViewModel: Equatable {
    public static func ==(lhs: DrinkViewModel,
                   rhs: DrinkViewModel) -> Bool {
        return lhs.quantity == rhs.quantity &&
        lhs.proof == rhs.proof &&
        lhs.units == rhs.units &&
        lhs.date == rhs.date
    }
}
