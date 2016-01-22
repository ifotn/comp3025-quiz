//
//  ViewController.swift
//  Quiz
//
//  Created by student on 2016-01-15.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // internal is implied
    @IBOutlet weak internal var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    // set up data model
    let questions: [String] = ["From what is cognac made?",
                                "What is 7 + 7?",
                                "What is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes",
                            "14",
                            "Montpellier"]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        // load first question by default
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        
        ++currentQuestionIndex
        // reset counter if at the end of the array
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        // show the current question and increment the counter
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
        
        
    }

    @IBAction func showAnswer(sender: AnyObject) {
        
        // display answer, keeping in mind we have already incremented the counter
        answerLabel.text = answers[currentQuestionIndex]
    }

}

