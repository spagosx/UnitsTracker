//
//  TrackCoordinatorView.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

struct DrinksListCoordinatorView: View {
    
    @ObservedObject var coordinator: DrinksListCoordinator
    
    var body: some View {
        NavigationView {
            DrinksListView(viewModel: coordinator.viewModel)
        }
    }
}
