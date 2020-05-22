//
//  ViewController.swift
//  Meower
//
//  Created by Jinqi Li on 3/10/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var Next: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func NextTouched(_ sender: UIButton) {
        DispatchQueue.main.async {
        self.performSegue(withIdentifier: "goToUser", sender: self)}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToUser" {
            let userVC = segue.destination as! UserInfoViewController
            print(userVC)
        }
    }
}

