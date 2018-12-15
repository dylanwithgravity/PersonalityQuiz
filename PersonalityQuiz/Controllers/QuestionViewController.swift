//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Dylan Williamson on 12/12/18.
//  Copyright © 2018 Dylan Williamson. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singlebutton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multiStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    var questionIndex = 0
    
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
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        
        singleStackView.isHidden = true
        multiStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)

        navigationItem.title = "Question #\(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .range:
            updateRangedStack(using: currentAnswers)
        }
        
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singlebutton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multiStackView.isHidden = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[4].text
    }

}
