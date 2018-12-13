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
}
