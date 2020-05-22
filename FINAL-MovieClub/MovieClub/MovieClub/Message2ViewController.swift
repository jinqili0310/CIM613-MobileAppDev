//
//  Message2ViewController.swift
//  MovieClub
//
//  Created by Yuan Fang on 5/4/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class Message2ViewController: UIViewController {
    @IBOutlet var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(messgeTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
}
extension Message2ViewController: UITableViewDataSource {
// MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell2", for: indexPath)as!messgeTableViewCell
               
               let message = messages[indexPath.row]
               cell.messageName?.text = message.name
               cell.contactTime?.text = message.time2
               cell.messageImage?.image = UIImage(named: message.png!)
               
           return cell
               
       }
}
