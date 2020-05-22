//
//  ViewController.swift
//  InstaDiary
//
//  Created by Jinqi Li on 1/22/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherText: UITextField!
    @IBOutlet weak var planText: UITextField!
    @IBOutlet weak var resultText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resultPressed(_ sender: UIButton) {
        let resultOne: String!
        let resultTwo: String!
        
        resultOne = "Today is " + (weatherText.text ?? "nice")
        resultTwo = " and I am going " + (planText.text ?? "home")
        
        resultText.text = resultOne + resultTwo
    }
    
}

