//
//  ViewController.swift
//  CoreDataApp
//
//  Created by chuan on 4/8/20.
//  Copyright © 2020 chuan. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    // var places:[String] = []
    var places:[NSManagedObject] = []
    
    @IBOutlet var tableView:UITableView!
    
    @IBAction func addPlace() {
        let alert = UIAlertController(title: "New Place", message: "Add a new place", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: {_ in
            guard let textField = alert.textFields?.first, let placeToSave = textField.text else {
                return
            }
            // self.places.append(placeToSave)
            self.save(placeName: placeToSave)
            self.tableView.reloadData()
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Place")
        do {
            places = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error)")
        }
    }
    
    func save(placeName: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Place", in: managedContext)!
        let place = NSManagedObject(entity: entity, insertInto: managedContext)
        place.setValue(placeName, forKey: "name")
        do {
            try managedContext.save()
            places.append(place)
        } catch let error as NSError {
            print("Could not save. \(error)")
        }
    }
    
    func delete(rowIndex: Int) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let place = places[rowIndex]
        managedContext.delete(place)
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not delete. \(error)")
        }
    }
}

extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // cell.textLabel?.text = places[indexPath.row]
        let place = places[indexPath.row]
        cell.textLabel?.text = place.value(forKeyPath: "name") as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            self.delete(rowIndex: indexPath.row)
            places.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
}
