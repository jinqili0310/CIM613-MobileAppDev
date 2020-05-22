//
//  ViewController.swift
//  MultipleView
//
//  Created by Jinqi Li on 3/30/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let name = UserDefaults.standard.string(forKey: "name") {
            welcomeLabel.text = "Welcome, \(name)!"
        }
    }


}

