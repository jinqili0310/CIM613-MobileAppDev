//
//  CommunityViewController.swift
//  MovieClub
//
//  Created by Yutong Han on 5/1/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class CommunityViewController: UIViewController {
    @IBOutlet var RoundedText1: UITextView!
    @IBOutlet var RoundedText2: UITextView!
    
    @IBOutlet var RoundedImage1: UIImageView!
    @IBOutlet var RoundedImage2: UIImageView!
    @IBOutlet var RoundedImage3: UIImageView!
    
    @IBOutlet var RoundedText3: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        RoundedText1.layer.cornerRadius = 20
        RoundedText2.layer.cornerRadius = 20
        
        RoundedImage1.layer.cornerRadius = 20
        RoundedImage2.layer.cornerRadius = 20
        RoundedImage3.layer.cornerRadius = 20
        
        RoundedText3.layer.cornerRadius = 20

        // Do any additional setup after loading the view.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
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
