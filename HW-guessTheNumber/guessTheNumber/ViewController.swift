//
//  ViewController.swift
//  guessTheNumber
//
//  Created by Ching-Hua Chuan on 2/2/20.
//  Copyright © 2020 chuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numLabel:UILabel!
    @IBOutlet var imageView:UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var inputLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        self.view.addGestureRecognizer(tapGesture)
      
        let answer = Int.random(in:1..<100)
        numLabel.text = String(answer)
       
        UIView.animate(withDuration: 40.0, animations: {
            self.imageView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        })
    }
    
        @objc func dismissKeyboard() {
            inputLabel.resignFirstResponder()
            view.endEditing(true)
        }

    @IBAction func submitButton(_ sender: UIButton) {
        let inputText = inputLabel.text!
        if !inputText.isEmpty {
            if let inputNum: Int = Int(inputText) {
                if inputNum < Int(numLabel.text!)! {
                        answerLabel.text = "Too low!"
                } else if inputNum > Int(numLabel.text!)! {
                    answerLabel.text = "Too high!"
                } else {
                    answerLabel.text = "Your guess is right!"
                }
                }
            }
        view.endEditing(true)
    }
    
}

