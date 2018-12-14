//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Dylan Williamson on 12/12/18.
//  Copyright © 2018 Dylan Williamson. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var questions: [Question] = [
        Question(text: "How are you feeling today?",
                 type: .single,
                 answers: [
                    Answer(text: "Blue", type: .cruise),
                    Answer(text: "Yellow", type: .roadtrip),
                    Answer(text: "Green", type: .mountains),
                    Answer(text: "Black", type: .city)]),
        Question(text: "Which activities do you want to do?",
                 type: .multiple,
                 answers: [
                   Answer(text: "Swimming", type: .cruise),
                   Answer(text: "Hiking", type: .mountains),
                   Answer(text: "Walking", type: .city),
                   Answer(text: "Driving", type: .roadtrip)]),
        Question(text: "how much do you like going out of country?",
                 type: .range,
                 answers: [
                    Answer(text: "I dislike", type: .roadtrip),
                    Answer(text: "I get a little nervous", type: .mountains),
                    Answer(text: "Maybe a bit", type: .cruise),
                    Answer(text: "I love other countries!", type: .city)]
        )]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
