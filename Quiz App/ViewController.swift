//
//  ViewController.swift
//  Quiz App
//
//  Created by Natan Gluszko on 11/06/2022.
//

import UIKit

class ViewController: UIViewController, QuizProtocol {
    
    var model = QuizModel()
    var questions = [Question]()
    var currentQuestionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.delegate = self
        model.getQuestions()
    }

    func questionsRetrieved(_ questions: [Question]) {
        print("QUESTIONS RETRIVED FROM MODEL")
    }

}

