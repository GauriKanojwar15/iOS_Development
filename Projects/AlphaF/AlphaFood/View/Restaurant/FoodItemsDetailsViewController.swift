//
//  FoodItemsDetailsViewController.swift
//  AlphaFood
//
//  Created by admin on 8/25/21.
//

import UIKit
import CoreData

class FoodItemsObj{
    var name: String?
    var price: Double?
    var type: String?
    
}

class FoodItemsDetailsViewController: UIViewController {
    var foodItems: [FoodItemsObj] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getFoodItemsData()
    }
    
    func getFoodItemsData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let request = NSFetchRequest<NSManagedObject>(entityName: "FoodItems")
        let objects = try! context.fetch(request)
        foodItems.removeAll()
        
        for object in objects{
            
            let foodItem = FoodItemsObj()
            
            foodItem.name = object.value(forKey: "name") as? String
            foodItem.type = object.value(forKey: "type") as? String
            
            foodItem.price = object.value(forKey: "price") as? Double
            foodItems.append(foodItem)
        }
        tableView.reloadData()
    }
    
}
extension FoodItemsDetailsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFood") as! FoodItemsTableViewCell
        let foodItem = foodItems[indexPath.row]
        cell.labelFoodItemName.text = "Name : " + foodItem.name!
        cell.labelFoodItemType.text = "Type : " + foodItem.type!

        cell.labelFoodItemPrice.text = "Price Rs.  \(String(describing: foodItem.price ?? 0.0))"
        return cell
    }
    
    
}

extension FoodItemsDetailsViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let food = foodItems[indexPath.row]
      
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let fetchrequest = NSFetchRequest<NSManagedObject>(entityName: "FoodItems")
        let predicates = NSPredicate(format: "name = '\(food.name!)'")
        fetchrequest.predicate = predicates
        let objects = try! context.fetch(fetchrequest)
                
        for object in objects{
            
            context.delete(object)
            do {
                try context.save()
            }catch let error as NSError {
                print("Could not save. \(error.localizedDescription), \(error.userInfo)")
            }
        }
        getFoodItemsData()
    }
}
