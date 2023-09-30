//
//  CalculateView.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

struct CalculateView: View {
    
    @ObservedObject var viewModel: CalculateViewModel
    
    @State var ounces: String = ""
    @State var proof: String = ""
    
    var body: some View {
        VStack {
            Text("Ounces")
            TextField("", text: $ounces)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
            Text("Proof")
            TextField("", text: $proof)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
            Button("Calculate") {
                viewModel.calculatePressed(ounces: ounces, proof: proof)
            }
            .disabled(ounces.isEmpty || proof.isEmpty)
            
            Text("Units")
            TextField("", text: $viewModel.calculatedUnits)
                .disabled(true)
        }
    }
}
