//
//  RestaurantDetailsViewController.swift
//  AlphaFood
//
//  Created by admin on 8/24/21.
//

import UIKit
import CoreData

class RestaurantClass {
    var name: String?
    var email: String?
    var address: String?
    var contact: Double?
    var password: String?
    
}
class RestaurantDetailsViewController: UIViewController {
    var restaurants: [RestaurantClass] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        navigationController?.setNavigationBarHidden(false, animated: false)
        getData()
    }
    
    func getData()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let request = NSFetchRequest<NSManagedObject>(entityName: "Restaurant")
        let objects = try! context.fetch(request)
        restaurants.removeAll()
        
        for object in objects{
            
            let restaurant = RestaurantClass()
            
            restaurant.name = object.value(forKey: "name") as? String
            restaurant.email = object.value(forKey: "email") as? String
            restaurant.address = object.value(forKey: "address") as? String
            restaurant.contact = object.value(forKey: "contact") as? Double
            restaurants.append(restaurant)
        }
        tableView.reloadData()
    }
}
extension RestaurantDetailsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! RestaurantTableViewCell
        let restaurant = restaurants[indexPath.row]
        cell.labelRestaurantName.text = "Name:  " + restaurant.name!
        cell.labelRestaurantEmail.text = "Email:  " + restaurant.email!
        cell.labelRestaurantAddress.text = "Address: " + restaurant.address!
        cell.labelRestaurantContact.text = "Contact:  +91  \(restaurant.contact!)"
        return cell
    }
    
    
}
extension RestaurantDetailsViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let restaurant  = restaurants[indexPath.row]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let fetchrequest = NSFetchRequest<NSManagedObject>(entityName: "Restaurant")
        let predicates = NSPredicate(format: "name = '\(restaurant.name!)'")
        fetchrequest.predicate = predicates
        let objects = try! context.fetch(fetchrequest)

        for object in objects{
            context.delete(object)
            do {
                try context.save()
            } catch let error as NSError {
                print("Could not save. \(error.localizedDescription), \(error.userInfo)")
            }
        }
        getData()
    }    
}



