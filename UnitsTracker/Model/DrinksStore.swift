//
//  Model.swift
//  UnitsTracker
//
//  Created by degs on 18/07/2023.
//

import Foundation
import Combine

extension Date {
    func lastSevenDays() -> [Date] {
        let cal = Calendar.current
        let today = cal.startOfDay(for: self)
        var days = [Date]()
        for i in 1 ... 7 {
            if let date = cal.date(byAdding: .day, value: -i, to: today) {
                days.append(date)
            }
        }
        return days
    }
}

class DrinksStore: LocalStoring {
    let storedObjects = CurrentValueSubject<[Drink], Never>(mockDrinks)
    
    private static let mockDrinks: [Drink] = {
        Date().lastSevenDays().map {
            Drink(floz: 2, proof: 80, units: 2.365, date: $0)
        }
    }()
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("drinks.data")
    }
    
    func add(drink: Drink) {
        self.storedObjects.value.append(drink)
    }
    
    func load() {
////        let task = Task<[Drink], Error> {
////            let fileURL = try Self.fileURL()
////            guard let data = try? Data(contentsOf: fileURL) else {
////                return []
////            }
////            let drinks = try JSONDecoder().decode([Drink].self, from: data)
////            return drinks
////        }
////        let drinks = try await task.value
    }
    
    func save(objects: [Drink]) {
//        let task = Task {
//            let data = try JSONEncoder().encode(drinks)
//            let outfile = try Self.fileURL()
//            try data.write(to: outfile)
//        }
//        _ = try await task.value
    }
}
