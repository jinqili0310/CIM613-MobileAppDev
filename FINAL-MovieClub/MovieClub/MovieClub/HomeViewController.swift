//
//  HomeViewController.swift
//  MovieClub
//
//  Created by Jinqi Li on 5/3/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var popularStackView: UIStackView!
    
    @IBOutlet weak var newStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
    
    @IBAction func movieA(_ sender: UIButton) {
        if let url = URL(string: "https://www.imdb.com/title/tt3107288/?ref_=ttep_ep_tt"),
                UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func buttonClicked(sender: UIButton) {
        print(sender.currentTitle ?? "nothing")
        let movieTitle = sender.currentTitle
        switch movieTitle {
        case "justice league":
            if let url = URL(string: "https://www.imdb.com/title/tt0974015/?ref_=nv_sr_srsg_0"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case "rampage":
            if let url = URL(string: "https://www.imdb.com/title/tt2231461/?ref_=nv_sr_srsg_0"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case "spider man":
            if let url = URL(string: "https://www.imdb.com/title/tt2250912/?ref_=nv_sr_srsg_3"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case "thor":
            if let url = URL(string: "https://www.imdb.com/title/tt3501632/?ref_=nv_sr_srsg_0"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case "arrival":
            if let url = URL(string: "https://www.imdb.com/title/tt2543164/?ref_=nv_sr_srsg_0"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case "dark knight":
            if let url = URL(string: "https://www.imdb.com/title/tt0468569/?ref_=nv_sr_srsg_0"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case "ghost story":
            if let url = URL(string: "https://www.imdb.com/title/tt6265828/?ref_=nv_sr_srsg_0"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case "expanse":
            if let url = URL(string: "https://www.imdb.com/title/tt3230854/?ref_=nv_sr_srsg_0"),
                    UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        default:
            break
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
