//
//  CalculateCoordinatorView.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

struct CalculateCoordinatorView: View {
    
    @ObservedObject var coordinator: CalculateCoordinator
    
    var body: some View {
        CalculateView(viewModel: coordinator.viewModel)
    }
}
