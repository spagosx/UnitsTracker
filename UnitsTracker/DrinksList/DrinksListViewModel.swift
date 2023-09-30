//
//  DrinksListViewModel.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI
import Combine

class DrinksListViewModel: ObservableObject {
    
    @Published var drinks = [DrinkViewModel]()
    
    private var drinksSubscription: AnyCancellable?
    
    init(drinksStore: DrinksStore) {
        drinksSubscription = drinksStore.storedObjects
            .map { drinks -> [DrinkViewModel] in
                drinks.map { drink in
                    DrinkViewModel(drink: drink)
                }
            }
            .assign(to: \.drinks, on: self)
    }
}
