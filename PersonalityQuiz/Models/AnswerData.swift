//
//  AnswerData.swift
//  PersonalityQuiz
//
//  Created by Dylan Williamson on 12/12/18.
//  Copyright © 2018 Dylan Williamson. All rights reserved.
//

import Foundation


struct Answer {
    var text: String
    var type: VacationType
}

enum VacationType: Character {
    case city = "🌆", mountains = "🏞", cruise = "🎑", roadtrip = "🌁"
    
    var definition: String {
        switch self {
        case .city:
            return "You want to be around a bunch of people. Live life in the city!"
        case .cruise:
            return "Venture off to a tropical island, set out to the sea!"
        case .mountains:
            return "Get away from the big building and see some mountains and perhaps go camping!"
        case .roadtrip:
            return "Not sure where to go? Hit the Road! Stumble upon new adventures as they come!"
        }
    }
    
}
