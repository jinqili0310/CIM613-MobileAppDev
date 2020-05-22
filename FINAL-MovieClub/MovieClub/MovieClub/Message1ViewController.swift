//
//  Message1ViewController.swift
//  MovieClub
//
//  Created by Yuan Fang on 5/3/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

var messages = MessageData.generateMessageData()

class messgeTableViewCell:UITableViewCell{

    @IBOutlet weak var messageName: UILabel!
    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var messageTime: UILabel!
     @IBOutlet var contactTime: UILabel!
    @IBOutlet weak var messageImage:UIImageView!
}

class Message1ViewController: UIViewController {
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

extension Message1ViewController: UITableViewDataSource {
// MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath)as!messgeTableViewCell
               
               let message = messages[indexPath.row]
               cell.textLabel?.numberOfLines = 0
               cell.messageName?.text = message.name
               cell.messageText?.text = message.texts
               cell.messageTime?.text = message.time
               cell.messageImage?.image = UIImage(named: message.png!)
               
           return cell
               
       }
}


