//
//  PlayersTableViewController.swift
//  Tabbed
//
//  Created by Jinqi Li on 4/1/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {
    
    var players = SampleData.generatePlayersData()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func cancelToPlayerVC(_ segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
        guard let playerDetailsVC = segue.source as? PlayerDetailsTableViewController, let player = playerDetailsVC.player else {
            return
        }
        players.append(player)
        
        let indexPath = IndexPath(row: players.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)

        // Configure the cell...
        let player = players[indexPath.row]
        cell.textLabel?.text = player.name
        cell.detailTextLabel?.text = player.game
        
        // Set up the star image
        switch(player.rating) {
            case 1:
                cell.imageView?.image = UIImage(named:"1Stars.png")
            case 2:
                cell.imageView?.image = UIImage(named:"2Stars.png")
            case 3:
                cell.imageView?.image = UIImage(named:"3Stars.png")
            case 4:
                cell.imageView?.image = UIImage(named:"4Stars.png")
            case 5:
                cell.imageView?.image = UIImage(named:"5Stars.png")
            default:
                cell.imageView?.image = UIImage(named:"1Stars.png")
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
