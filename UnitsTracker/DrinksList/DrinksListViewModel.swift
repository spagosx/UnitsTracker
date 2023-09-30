//
//  DrinksListViewModel.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI
import Combine

class DrinksListViewModel: ObservableObject {
    
    @Published var drinks = [Drink]()
    
    private let drinksStore: DrinksStore
    private unowned let coordinator: DrinksListCoordinator
    private var drinksSubscription: AnyCancellable?
    
    init(drinksStore: DrinksStore,
         coordinator: DrinksListCoordinator) {
        self.drinksStore = drinksStore
        self.coordinator = coordinator
        
        drinksSubscription = drinksStore.drinks.assign(to: \.drinks, on: self)
    }
}
