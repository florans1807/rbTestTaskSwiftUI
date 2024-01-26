//
//  extensions.swift
//  rbTestTaskSwiftUI
//
//  Created by Флоранс on 26.01.2024.
//

import Foundation

extension Int {
    func getCorrectWordEnding() -> String {
        var dayString: String!
        if "1".contains("\(self % 10)")      {dayString = "ставка"}
        if "234".contains("\(self % 10)")    {dayString = "ставки" }
        if "567890".contains("\(self % 10)") {dayString = "ставок"}
        if 11...14 ~= self % 100             {dayString = "ставки"}
        return "\(self) " + dayString
    }
}
