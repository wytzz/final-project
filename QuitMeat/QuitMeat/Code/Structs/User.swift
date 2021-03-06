//
//  User.swift
//  QuitMeat
//
//  Struct that represents other than current user.
//
//  Created by Melle Meewis on 15/01/2019.
//  Copyright © 2019 Melle Meewis. All rights reserved.
//

import Foundation

// Struct that represents other than current user
struct User {
    var name: String
    var ID: String
    var stoppedItems: [String:StoppedItem]
    var friends: [String]
    // calculate co2 saved other user
    var co2Saved: Int {
        var co2Saved = 0
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        let calender = Calendar.current
        for (key, value) in self.stoppedItems {
            let dateAsString = value.stopDate
            let stopDate = dateFormatter.date(from: dateAsString)!
            let currentDate = Date()
            let components = calender.dateComponents([.day], from: stopDate, to: currentDate)
            let dayDifference = components.day!
            let daysNotEaten = Float(Float(dayDifference) / 7.00 * Float(value.days))
            co2Saved = co2Saved + Int(daysNotEaten * Float((SessionController.shared.productTypes[key]?.co2)!))
        }
        return co2Saved
    }
    //  Calculate water saved other user
    var waterSaved: Int {
        var waterSaved = 0
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        let calender = Calendar.current
        for (key, value) in self.stoppedItems {
            let dateAsString = value.stopDate
            let stopDate = dateFormatter.date(from: dateAsString)!
            let currentDate = Date()
            let components = calender.dateComponents([.day], from: stopDate, to: currentDate)
            let dayDifference = components.day!
            let daysNotEaten = Float(Float(dayDifference) / 7.00 * Float(value.days))
            waterSaved = waterSaved + Int(daysNotEaten * Float((SessionController.shared.productTypes[key]?.water)!))
        }
        return waterSaved
    }
    // Calculate animals saved other user
    var animalsSaved: Int {
        var animalsSaved = 0
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        let calender = Calendar.current
        for (key, value) in self.stoppedItems {
            let dateAsString = value.stopDate
            let stopDate = dateFormatter.date(from: dateAsString)!
            let currentDate = Date()
            let components = calender.dateComponents([.day], from: stopDate, to: currentDate)
            let dayDifference = components.day!
            let daysNotEaten = Float(Float(dayDifference) / 7.00 * Float(value.days))
            animalsSaved = animalsSaved + Int(daysNotEaten * Float((SessionController.shared.productTypes[key]?.animals)!))
        }
        return animalsSaved
    }
}

//  Struct that represents other than current user (compact version).
struct SearchUser {
    var name: String
    var ID: String
}
