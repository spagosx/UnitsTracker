//
//  Drink.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import Foundation

struct Drink: Identifiable, Codable {
    var id = UUID()
    let floz: Double
    let proof: Double
    let units: Double
    let date: Date
}
