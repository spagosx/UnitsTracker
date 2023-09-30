//
//  LocalStoring.swift
//  UnitsTracker
//
//  Created by degs on 30/09/2023.
//

import Foundation
import Combine

protocol LocalStoring {
    var storedObjects: CurrentValueSubject<[Drink], Never> { get }
    func load()
    func save(objects: [Drink])
}
