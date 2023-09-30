//
//  UnitsTrackerApp.swift
//  UnitsTracker
//
//  Created by degs on 18/07/2023.
//

import SwiftUI

@main
struct UnitsTrackerApp: App {
    
    @StateObject private var coordinator = TabCoordinator(drinksStore: DrinksStore())

    var body: some Scene {
        WindowGroup {
            TabCoordinatorView(coordinator: coordinator)
        }
    }
}
