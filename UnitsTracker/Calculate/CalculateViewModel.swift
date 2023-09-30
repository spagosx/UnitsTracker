//
//  CalculateViewModel.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import Foundation

class CalculateViewModel: ObservableObject {
    
    @Published var calculatedUnits: String = ""
    
    private let calculator = UnitsCalculator()
    
    func calculatePressed(ounces: String, proof: String) {
        guard let ounces = Double(ounces) else {
            preconditionFailure("'ounces' string should contain numeric characters")
        }
        guard let proof = Double(proof) else {
            preconditionFailure("'proof' string should contain numeric characters")
        }
        
        calculatedUnits = String(format: "%.2f", calculator.unitsFrom(floz: ounces, proof: proof))
    }
}
