//
//  ViewController.swift
//  MovieClub
//
//  Created by Jinqi Li on 4/29/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    var emailPass: String?
    var passwordPass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         emailText.text = emailPass
         passwordText.text = passwordPass
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        
        let email = emailText.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordText.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().createUser(withEmail: email!, password: password!) { (result, err) in
            if err != nil {
            } else {
                let db = Firestore.firestore()
                self.performSegue(withIdentifier: "goToHome", sender: self)
                
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHome" {
            let homeVC = segue.destination as! HomeViewController
           
        }
    }
    
}

