//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jinqi Li on 1/29/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billInput: UITextField!
    @IBOutlet weak var fifteenTip: UITextField!
    @IBOutlet weak var fifteenTotal: UITextField!
    @IBOutlet weak var twentyTip: UITextField!
    @IBOutlet weak var twentyTotal: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billAmount: Float = Float(billInput.text!)!
        
        let fifteenResult = billAmount * 0.15
        let fifteenFinal = billAmount * 1.15
        fifteenTip.text = String(format: "%.2f", fifteenResult)
        fifteenTotal.text = String(format: "%.2f", fifteenFinal)
        
        let twentyResult = billAmount * 0.2
        let twentyFinal = billAmount * 1.2
        twentyTip.text = String(format: "%.2f", twentyResult)
        twentyTotal.text = String(format: "%.2f", twentyFinal)
        
        billInput.resignFirstResponder()
        billInput.text = ""
    }
}

