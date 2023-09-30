//
//  TabCoordinator.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

enum Tab {
    case calculate
    case track
}

class TabCoordinator: ObservableObject {
    @Published var tab = Tab.calculate
    var calculateCoordinator: CalculateCoordinator!
    var drinksListCoordinator: DrinksListCoordinator!
    
    init(drinksStore: DrinksStore) {
        self.calculateCoordinator = CalculateCoordinator()
        self.drinksListCoordinator = DrinksListCoordinator(drinksStore: drinksStore)
    }
}
