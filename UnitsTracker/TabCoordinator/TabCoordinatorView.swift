//
//  TabCoordinatorView.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

struct TabCoordinatorView: View {
    
    @ObservedObject var coordinator: TabCoordinator
    
    var body: some View {
        
        TabView(selection: $coordinator.tab) {
            
            CalculateCoordinatorView(coordinator: coordinator.calculateCoordinator)
                .tabItem {
                    Label("Calculate", systemImage: "function")
                }
                .tag(Tab.calculate)
            
            DrinksListCoordinatorView(coordinator: coordinator.trackCoordinator)
                .tabItem {
                    Label("Track", systemImage: "chart.bar.doc.horizontal")
                }
                .tag(Tab.track)
        }
    }
}
