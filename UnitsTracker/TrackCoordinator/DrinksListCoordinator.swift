//
//  TrackCoordinator.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

class DrinksListCoordinator: ObservableObject {
    
    @Published var viewModel: DrinksListViewModel!
    
    init(drinksStore: DrinksStore) {
        self.viewModel = DrinksListViewModel(drinksStore: drinksStore,
                                             coordinator: self)
    }
}
