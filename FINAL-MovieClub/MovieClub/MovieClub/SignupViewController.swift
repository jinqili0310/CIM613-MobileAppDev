//
//  SignupViewController.swift
//  MovieClub
//
//  Created by Jinqi Li on 5/3/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignupViewController: UIViewController {
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var confirmInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    func validateFields() -> String? {
        if emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || confirmInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields."
        }
        
        let cleanedPassword = passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(testStr: cleanedPassword) == false {
            return "Password is not valid."
        }
        
        let cleanedEmail = emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isEmailValid(email: cleanedEmail) == false {
            return "Email is not valid."
        }
        
        return nil
    }
    
    @IBAction func signupPressed(_ sender: UIButton) {
        let error = validateFields()
        
        let email = emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().createUser(withEmail: email!, password: password!) { (result, err) in
            if err != nil {
            } else {
                let db = Firestore.firestore()

                db.collection("users").addDocument(data: [
                    "email": email!,
                    "password": password!,
                    "uid": result!.user.uid
                ])
            }
        }
        performSegue(withIdentifier: "login", sender: [emailInput.text!, passwordInput.text!])

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "login" {
            let loginVC = segue.destination as! LoginViewController
            let email  = emailInput.text ?? ""
            let password = passwordInput.text ?? ""
            print(email)
            print(password)
            loginVC.emailPass = email
            loginVC.passwordPass = password
        }
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
