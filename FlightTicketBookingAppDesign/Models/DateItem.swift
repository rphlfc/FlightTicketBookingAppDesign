//
//  DateItem.swift
//  FlightTicketBookingAppDesign
//
//  Created by Raphael Cerqueira on 05/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation
import SwiftUI

struct DateItem: Identifiable {
    let id = UUID().uuidString
    var weekDay: String
    var monthDay: String
}

let dateData: [DateItem] = [
    DateItem(weekDay: "Wed", monthDay: "16"),
    DateItem(weekDay: "Thu", monthDay: "17"),
    DateItem(weekDay: "Fri", monthDay: "18"),
    DateItem(weekDay: "Sat", monthDay: "19"),
    DateItem(weekDay: "Sun", monthDay: "20"),
    DateItem(weekDay: "Mon", monthDay: "21"),
    DateItem(weekDay: "Tue", monthDay: "22"),
    DateItem(weekDay: "Wed", monthDay: "23"),
    DateItem(weekDay: "Thu", monthDay: "24"),
    DateItem(weekDay: "Fri", monthDay: "25")
]
