//
//  ViewController.swift
//  keyboardIssue
//
//  Created by Jinqi Li on 2/3/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        self.view.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        print(self.view.frame.origin.y)
        if let keyboardSize = (notification.userInfo? [UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
            print(self.view.frame.origin.y)
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
        print(self.view.frame.origin.y)
    }
    
    @objc func dismissKeyboard() {
//        textField.resignFirstResponder()
        view.endEditing(true)
    }
}

