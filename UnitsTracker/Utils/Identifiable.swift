//
//  Identifiable.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import Foundation

extension Identifiable where ID: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
