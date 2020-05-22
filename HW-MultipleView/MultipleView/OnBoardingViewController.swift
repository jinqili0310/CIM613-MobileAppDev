//
//  OnBoardingViewController.swift
//  MultipleView
//
//  Created by Jinqi Li on 3/30/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    @IBOutlet var nameText: UITextField!
    
    @IBAction func continuePressed() {
        if let name = nameText.text {
            UserDefaults.standard.set(name, forKey: "name")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
