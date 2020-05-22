//
//  LikeDataViewController.swift
//  Meower
//
//  Created by Jinqi Li on 3/11/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class LikeDataViewController: UIViewController {
    var Cat0: Bool! = false
    var Cat1: Bool! = false
    var Cat2: Bool! = false
    var Cat3: Bool! = false
    @IBOutlet weak var cat0Like: UIImageView!
    @IBOutlet weak var cat1Like: UIImageView!
    @IBOutlet weak var cat2Like: UIImageView!
    @IBOutlet weak var cat3Like: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("cat0 \(String(describing: Cat0))")
        print("cat1 \(String(describing: Cat1))")
        print("cat2 \(String(describing: Cat2))")
        print("cat3 \(String(describing: Cat3))")
        
        if Cat0 == true {
            cat0Like.image = UIImage(named: "like")
            cat0Like.alpha = 0.5
            cat0Like.tintColor = UIColor.systemRed
        }
        if Cat1 == true {
            cat1Like.image = UIImage(named: "like")
            cat1Like.alpha = 0.5
            cat1Like.tintColor = UIColor.systemRed
        }
        if Cat2 == true {
            cat2Like.image = UIImage(named: "like")
            cat2Like.alpha = 0.5
            cat2Like.tintColor = UIColor.systemRed
        }
        if Cat3 == true {
            cat3Like.image = UIImage(named: "like")
            cat3Like.alpha = 0.5
            cat3Like.tintColor = UIColor.systemRed
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
    DispatchQueue.main.async {
        self.performSegue(withIdentifier: "goBack", sender: self)}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goBack" {
            let cardVC = segue.destination as! SwipeCardViewController
            print(cardVC)
        }
    }
    
}
