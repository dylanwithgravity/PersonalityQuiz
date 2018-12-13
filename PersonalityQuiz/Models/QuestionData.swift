//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Dylan Williamson on 12/12/18.
//  Copyright © 2018 Dylan Williamson. All rights reserved.
//

import Foundation

struct Question {
    
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
}

enum ResponseType {
    case single, multiple, range
}
