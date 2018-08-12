//
//  Section.swift
//  Collapse
//
//  Created by tolga iskender on 12.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import Foundation

struct Section {
    var money: String
    var currency_Rate: [String]
    var expanded: Bool
    
    init(money: String, currency_Rate: [String], expanded: Bool) {
        self.money = money
        self.currency_Rate = currency_Rate
        self.expanded = expanded
    }
}
