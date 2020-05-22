//
//  ProfileViewController.swift
//  MovieClub
//
//  Created by Yuan Fang on 5/4/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

struct card {
    var value: String?
    var category: String?
}

class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var cardCollection: UICollectionView!
    @IBOutlet weak var posterCollection: UICollectionView!
    
    let posters = ["movie2.png", "movie3.png", "movie4.png", "movie5.png", "movie11.png", "movie12.png", "movie13.png", "movie14.png"]
    
//    let cards = [
//        card(value: "321", category: "Liked movies"),
//        card(value: "154", category: "Posts"),
//        card(value: "44", category: "Communities")
//    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return posters.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "posterCell", for: indexPath) as! posterCollectionViewCell
            cell.posterImage.image = UIImage(named: posters[indexPath.row])
            return cell
      
        
       }

}

