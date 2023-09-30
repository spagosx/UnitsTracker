//
//  CalculateCoordinator.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

class CalculateCoordinator: ObservableObject {
    
    @Published var viewModel: CalculateViewModel
    
    init() {
        self.viewModel = CalculateViewModel()
    }
}
