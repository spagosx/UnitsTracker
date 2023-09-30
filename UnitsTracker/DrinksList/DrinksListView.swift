//
//  DrinksListView.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import SwiftUI

struct DrinksListView: View {
    
    @ObservedObject var viewModel: DrinksListViewModel
    
    var body: some View {
        List(viewModel.drinks) { drink in
            Text("\(drink.quantity), \(drink.proof), \(drink.units), \(drink.date)")
        }
    }
}
