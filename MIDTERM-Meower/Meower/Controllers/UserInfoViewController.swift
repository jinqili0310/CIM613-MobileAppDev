//
//  UserInfoViewController.swift
//  Meower
//
//  Created by Jinqi Li on 3/11/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    @IBOutlet weak var enterButtun: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        self.view.addGestureRecognizer(tapGesture)
  
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
  
    @objc func dismissKeyboard() {
    //        textField.resignFirstResponder()
            view.endEditing(true)
    }
    
    @IBAction func enterPressed(_ sender: UIButton) {
    DispatchQueue.main.async {
        self.performSegue(withIdentifier: "goToCard", sender: self)}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToCard" {
            let cardVC = segue.destination as! SwipeCardViewController
            print(cardVC)
        }
    }
    
}
