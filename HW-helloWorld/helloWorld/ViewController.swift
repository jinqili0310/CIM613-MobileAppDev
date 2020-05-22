//
//  ViewController.swift
//  helloWorld
//
//  Created by Jinqi Li on 1/15/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var inputName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonTouched(_ sender: UIButton) {
        titleLabel.text = "Hello " + (inputName.text ?? "world") + "!"
    }
    
}

