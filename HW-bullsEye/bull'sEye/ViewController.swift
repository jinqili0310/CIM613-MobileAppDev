//
//  ViewController.swift
//  bull'sEye
//
//  Created by Jinqi Li on 2/12/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomNum: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 50
    var targetValue: Int = 0
    var totalPoints: Int = 0
    var currentRound: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        targetValue = 1 + Int(arc4random_uniform(100))
        randomNum.text = String(targetValue)
    }

    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
        print("The value of the slider is now: \(slider.value).")
    }
    
    @IBAction func startOver(_ sender: UIButton) {
        slider.value = 50
        targetValue = 1 + Int(arc4random_uniform(100))
        randomNum.text = String(targetValue)
    }
    
    @IBAction func infoBtn(_ sender: UIButton) {
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        let difference = calculateScroe()
        let score = 100 - difference
        
        totalPoints = totalPoints + score
        currentRound = currentRound + 1
        
        let message = "The value of the slider is: \(currentValue)" + "\nThe value of the target is: \(targetValue)" + "\nYou scored \(score) point!"
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        scoreLabel.text = String(totalPoints)
        roundLabel.text = String(currentRound)
    }
    
    func calculateScroe()->Int {
        var difference: Int = 0
        difference = abs(targetValue - currentValue)
        return difference
    }
}

