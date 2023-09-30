//
//  Calculator.swift
//  UnitsTracker
//
//  Created by degs on 18/07/2023.
//

import Foundation

let floz_to_ml_factor = 29.57353

struct UnitsCalculator {

    func unitsFrom(floz: Double, proof: Double) -> Double {
        // convert floz into ml
        let ml = floz * floz_to_ml_factor
        // convert proof to vol
        let vol = proof / 2
        
        // get units
        let units = (ml * vol) / 1000
        return units
    }
}
