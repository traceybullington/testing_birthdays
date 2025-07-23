//
//  Friend.swift
//  testing_birthdays
//
//  Created by Tracey Bullington on 7/10/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
}
