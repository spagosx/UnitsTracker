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
    @Published var calculateCoordinator = CalculateCoordinator()
    @Published var trackCoordinator = DrinksListCoordinator(drinksStore: DrinksStore())
}
