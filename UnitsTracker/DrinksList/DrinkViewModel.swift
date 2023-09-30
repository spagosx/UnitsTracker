//
//  DrinkViewModel.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import Foundation

class DrinkViewModel: Identifiable {
    let drink: Drink
    
    init(drink: Drink) {
        self.drink = drink
    }
    
    lazy var date: String = {
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter.string(from: drink.date)
    }()
    
    var quantity: String {
        return String(format: "%.2f", drink.floz)
    }
    
    var proof: String {
        return String(format: "%.2f", drink.proof)
    }
    
    var units: String {
        return String(format: "%.2f", drink.units)
    }
}
