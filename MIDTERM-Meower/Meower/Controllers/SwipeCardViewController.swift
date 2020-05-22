//
//  SwipeCardViewController.swift
//  Meower
//
//  Created by Jinqi Li on 3/10/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class SwipeCardViewController: UIViewController {
    @IBOutlet weak var Card: UIView!
    @IBOutlet weak var LikeView: UIImageView!
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var Card1: UIView!
    @IBOutlet weak var LikeView1: UIImageView!
    @IBOutlet weak var ImageView1: UIImageView!
    
    @IBOutlet weak var Card2: UIView!
    @IBOutlet weak var LikeView2: UIImageView!
    @IBOutlet weak var ImageView2: UIImageView!
    
    @IBOutlet weak var Card3: UIView!
    @IBOutlet weak var LikeView3: UIImageView!
    @IBOutlet weak var ImageView3: UIImageView!
    
    var cat0: Bool = false
    var cat1: Bool = false
    var cat2: Bool = false
    var cat3: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        ImageView.image = UIImage(named: "Cat\(arc4random_uniform(4) + 1).jpg")
        print("view \(view.center.y)")
        print("card \(Card.center.y)")
        print("card1 \(Card1.center.y)")
        print("card2 \(Card2.center.y)")
        print("card3 \(Card3.center.y)")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func PanCard(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        let xFromCenter = card.center.x - view.center.x
        
        if xFromCenter > 0 {
            // 右滑
            LikeView.image = UIImage(named: "like")
            LikeView.tintColor = UIColor.systemRed
            // MARK: 存储关于喜欢的数据
            cat0 = true
        } else {
            // 左滑
            LikeView.image = UIImage(named: "dislike")
            LikeView.tintColor = UIColor.systemBlue
            // MARK: 存储关于不喜欢的数据
            cat0 = false
        }
        LikeView.alpha = abs(xFromCenter) / view.center.x
        
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if sender.state == UIGestureRecognizer.State.ended {
            
            if card.center.x < 100 {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x - 200, y: card.center.y + 75)
                    card.alpha = 0
                    self.Card1.center.y = self.view.center.y + 29.5
                    self.Card2.center.y = self.view.center.y + 19.5
                    self.Card3.center.y = self.view.center.y + 9.5
                })
                return
            } else if card.center.x > (view.frame.width - 100) {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                    self.Card1.center.y = self.view.center.y + 29.5
                    self.Card2.center.y = self.view.center.y + 19.5
                    self.Card3.center.y = self.view.center.y + 9.5
                })
                return
            }
            
        }
        
    }
    
    @IBAction func PanCard1(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        let xFromCenter = card.center.x - view.center.x
        
        if xFromCenter > 0 {
            // 右滑
            LikeView1.image = UIImage(named: "like")
            LikeView1.tintColor = UIColor.systemRed
            // MARK: 存储关于喜欢的数据
            cat1 = true
        } else {
            // 左滑
            LikeView1.image = UIImage(named: "dislike")
            LikeView1.tintColor = UIColor.systemBlue
            // MARK: 存储关于不喜欢的数据
            cat1 = false
        }
        LikeView1.alpha = abs(xFromCenter) / view.center.x
        
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if sender.state == UIGestureRecognizer.State.ended {
            
            if card.center.x < 100 {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x - 200, y: card.center.y + 75)
                    card.alpha = 0
                    self.Card2.center.y = self.view.center.y + 29.5
                    self.Card3.center.y = self.view.center.y + 19.5
                })
                return
            } else if card.center.x > (view.frame.width - 100) {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                    self.Card2.center.y = self.view.center.y + 29.5
                    self.Card3.center.y = self.view.center.y + 19.5
                })
                return
            }
  
        }
        
    }
    
    @IBAction func PanCard2(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        let xFromCenter = card.center.x - view.center.x
        
        if xFromCenter > 0 {
            // 右滑
            LikeView2.image = UIImage(named: "like")
            LikeView2.tintColor = UIColor.systemRed
            // MARK: 存储关于喜欢的数据
            cat2 = true
        } else {
            // 左滑
            LikeView2.image = UIImage(named: "dislike")
            LikeView2.tintColor = UIColor.systemBlue
            // MARK: 存储关于不喜欢的数据
            cat2 = false
        }
        LikeView2.alpha = abs(xFromCenter) / view.center.x
        
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if sender.state == UIGestureRecognizer.State.ended {
            
            if card.center.x < 100 {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x - 200, y: card.center.y + 75)
                    card.alpha = 0
                    self.Card3.center.y = self.view.center.y + 29.5
                })
                return
            } else if card.center.x > (view.frame.width - 100) {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                    self.Card3.center.y = self.view.center.y + 29.5
                })
                return
            }
 
        }
        
    }
    
    @IBAction func PanCard3(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        let xFromCenter = card.center.x - view.center.x
        
        if xFromCenter > 0 {
            // 右滑
            LikeView3.image = UIImage(named: "like")
            LikeView3.tintColor = UIColor.systemRed
            // MARK: 存储关于喜欢的数据
            cat3 = true
        } else {
            // 左滑
            LikeView3.image = UIImage(named: "dislike")
            LikeView3.tintColor = UIColor.systemBlue
            // MARK: 存储关于不喜欢的数据
            cat3 = false
        }
        LikeView3.alpha = abs(xFromCenter) / view.center.x
        
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if sender.state == UIGestureRecognizer.State.ended {
            
            if card.center.x < 100 {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x - 200, y: card.center.y + 75)
                    card.alpha = 0
                })
                return
            } else if card.center.x > (view.frame.width - 100) {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                })
                return
            }
            
            // MARK: 加结束文字
        }
        
    }
    
    
    @IBAction func NextButton(_ sender: UIButton) {
        // MARK: 随机卡片
        var CardArray = [UIView]()
        for _ in 0 ..< 4 {
            CardArray.append(Card)
            CardArray.append(Card1)
            CardArray.append(Card2)
            CardArray.append(Card3)
        }
        let RandomInt = Int.random(in: 0..<3)
        let RandomCard = CardArray[RandomInt]
        RandomCard.alpha = 1
        UIView.animate(withDuration: 0.2, animations: {
            RandomCard.center.x = self.view.center.x
            RandomCard.center.y = self.view.center.y + 29.5
            self.LikeView.alpha = 0
            self.LikeView1.alpha = 0
            self.LikeView2.alpha = 0
            self.LikeView3.alpha = 0
        })
    }
    
//    func NextCard() {
//        ImageView.image = UIImage(named: "Cat\(arc4random_uniform(4) + 1).jpg")
//        self.Card.alpha = 1
//        UIView.animate(withDuration: 0.2, animations: {
//            self.Card.center.x = self.view.center.x
//            self.Card.center.y = self.view.center.y + 60
//            self.LikeView.alpha = 0
//        })
//    }
    
    @IBAction func LikeDataTouched(_ sender: UIButton) {
        DispatchQueue.main.async {
        self.performSegue(withIdentifier: "goToLikeData", sender: self)}
    }
    @IBAction func UserInfoTouched(_ sender: UIButton) {
        DispatchQueue.main.async {
        self.performSegue(withIdentifier: "goToUserInfo", sender: self)}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLikeData" {
            let likeVC = segue.destination as! LikeDataViewController
            print(likeVC)
            likeVC.Cat0 = self.cat0
            likeVC.Cat1 = self.cat1
            likeVC.Cat2 = self.cat2
            likeVC.Cat3 = self.cat3
        }
        if segue.identifier == "goToUserInfo" {
            let userVC = segue.destination as! UserInfoViewController
            print(userVC)
        }
    }
}
