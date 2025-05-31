//
//  RestaurantRegistrationViewController.swift
//  AlphaFood
//
//  Created by admin on 8/20/21.
//

import UIKit
import CoreData

class RestaurantRegistrationViewController: UIViewController {
   
    @IBOutlet weak var editRestaurantName: UITextField!
    @IBOutlet weak var editRestaurantEmail: UITextField!
    @IBOutlet weak var editRestaurantAddress: UITextField!
    @IBOutlet weak var editRestaurantContact: UITextField!
    @IBOutlet weak var editRestaurantPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    @IBAction func btnLoginClick(_ sender: Any) {
        let app = UIApplication.shared
        let appDelegate = app.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let object = NSEntityDescription.insertNewObject(forEntityName: "Restaurant", into: context)
        
        object.setValue(editRestaurantName.text!, forKey: "name")
        object.setValue(editRestaurantEmail.text!, forKey: "email")
        object.setValue(editRestaurantAddress.text!, forKey: "address")
        let phoneNumber = Double(editRestaurantContact.text!)
        object.setValue(phoneNumber, forKey: "Contact")
        object.setValue(editRestaurantPassword.text!, forKey: "password")
        do{
            try context.save()
        }catch{
            print("error")
        }
        
        try! context.save()
        
        let alert = UIAlertController(title: "Successful", message: "Restaurant Added By Admin Permission.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnCancelClick(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func onShow() {
        let app = UIApplication.shared
        let appDelegate = app.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSManagedObject>(entityName: "Restaurant")
        let objects = try! context.fetch(request)
        
        for object in objects{
            let name = object.value(forKey: "name")!
            let address = object.value(forKey: "address")!
            print(name)
            print(address)
        }
    }
}

