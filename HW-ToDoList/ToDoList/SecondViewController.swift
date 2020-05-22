//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Jinqi Li on 4/16/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var inspirationArray: [String] = ["Do not, for one repulse, give up the purpose that you resolved to effect.\n—— William Shakespeare",
    "Don’t part with your illusions. When they are gone you may still exist, but you have ceased to live.\n—— Mark Twain",
    "Genius only means hard-working all one's life.\n—— Dmitri Mendeleev",
    "I have nothing to offer but blood , toil tears and sweat.\n—— Winston Churchill",
    "We do not need magic to transform our world. We carry all of the power we need inside ourselves already.\n—— J. K. Rowling",
    "I am a woman in process. I'm just trying like everybody else. I try to take every conflict, every experience, and learn from it. Life is never dull.\n—— Oprah Winfrey",
    "Change your life today. Don't gamble on the future, act now, without delay.\n—— Simone de Beauvoir"]
    
    @IBOutlet weak var inspireTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.systemGreen
    }

    @IBAction func InspireTouched(_ sender: UIButton) {
        let indexNum = Int.random(in: 0...6)
        inspireTextView.text = inspirationArray[indexNum]
    }
    

}

