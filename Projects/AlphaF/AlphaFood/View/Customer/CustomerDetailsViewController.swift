//
//  CustomerDetailsViewController.swift
//  AlphaFood
//
//  Created by admin on 8/23/21.
//

import UIKit
import CoreData

class CustomerOBJ
{
    var name: String?
    var email: String?
    var address: String?
    var mobile: Double?
    var password: String?
    
}

class CustomerDetailsViewController: UIViewController {

    var customers: [CustomerOBJ] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        getAllData()
    }
    func getAllData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let request = NSFetchRequest<NSManagedObject>(entityName: "Customer")
        let objects = try! context.fetch(request)
        customers.removeAll()
        
        for object in objects{
            let customer = CustomerOBJ()
            
            customer.name = object.value(forKey: "name") as? String
            customer.email = object.value(forKey: "email") as? String
            customer.address = object.value(forKey: "address") as? String
            customer.mobile = object.value(forKey: "mobile") as? Double
            customers.append(customer)
        }
        tableView.reloadData()
    }
}

extension CustomerDetailsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomerTableViewCell
        let customer = customers[indexPath.row]
        
        cell.lableCustomerName.text = "Name:  " + customer.name!
        cell.lableCustomerEmail.text = "Email:  " + customer.email!
        cell.lableCustomerAddress.text = "Address:  " + customer.address!
        cell.lableCustomerMobile.text = "Mobile:  \(customer.mobile ?? 0.0)"
        
        return cell
    }
        
        func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            return true
        }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            let customer  = customers[indexPath.row]
            
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let fetchrequest = NSFetchRequest<NSManagedObject>(entityName: "Customer")
            let predicates = NSPredicate(format: "name = '\(customer.name!)'")
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
            getAllData()
        }
}



