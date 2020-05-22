//
//  ViewController.swift
//  temperatureConvertorCustomUI
//
//  Created by Jinqi Li on 1/27/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FahrenheitInput: UITextField!
    @IBOutlet weak var CelciusOutput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertPressed(_ sender: UIButton) {
        let FaText = FahrenheitInput.text!
        if !FaText.isEmpty {
            if let FahrenheitNum: Float = Float(FaText) {
//                print(FahrenheitNum)
                let CelciusNum: Float = (FahrenheitNum - 32) * 5/9
//                print(CelciusNum)
                CelciusOutput.text = String(format: "%.1f", CelciusNum)
            } else {
                CelciusOutput.text = "???"
            }
        } else {
            CelciusOutput.text = "???"
        }
        
        FahrenheitInput.resignFirstResponder()
        view.endEditing(true)
    }
    

}

