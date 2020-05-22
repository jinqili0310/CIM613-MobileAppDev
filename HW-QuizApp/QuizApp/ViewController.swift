//
//  ViewController.swift
//  QuizApp
//
//  Created by Jinqi Li on 2/10/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions: [String] = ["What is the capital of Florida?", "What is 12 modulo 7? ", "What is the name of UM's mascot?"]
    
    let answers:[String] = ["Tallahassee", "5", "Sebastian the Ibis"]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showQuestion(_ sender: UIButton) {
        questionLabel.text = questions[currentQuestionIndex]
        
        if currentQuestionIndex < questions.count-1 {
            currentQuestionIndex = currentQuestionIndex + 1
        } else {
            currentQuestionIndex = 0
        }
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
    }
}

