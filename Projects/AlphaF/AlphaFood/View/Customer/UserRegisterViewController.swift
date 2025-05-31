//
//  UserRegisterViewController.swift
//  AlphaFood
//
//  Created by admin on 8/19/21.
//

import UIKit
import CoreData
class UserRegisterViewController: UIViewController {

    @IBOutlet weak var customerNameReg: UITextField!
    @IBOutlet weak var customerEmailReg: UITextField!
    @IBOutlet weak var customerAddressReg: UITextField!
    @IBOutlet weak var customerMobileReg: UITextField!
    @IBOutlet weak var customerPassReg: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()  
           }
    
    @IBAction func onDelete(_ sender: Any) {
        
        let app = UIApplication.shared
        let appDelegate = app.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Customer")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        try! context.execute(deleteRequest)
        try! context.save()
    
    }
    
    
    // Function to check whether data is stored in coredata
    @IBAction func onRegister() {
        let app = UIApplication.shared
        let appDelegate = app.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSManagedObject>(entityName: "Customer")
     let objects = try! context.fetch(request)
        
        for object in objects{
            let name = object.value(forKey: "name")!
            let address = object.value(forKey: "address")!
            print(name)
            print(address)
    }
    }
    @IBAction func onLogin(_ sender: Any) {
                        
        let app = UIApplication.shared
        let appDelegate = app.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let object = NSEntityDescription.insertNewObject(forEntityName: "Customer", into: context)
        
        object.setValue(customerNameReg.text!, forKey: "name")
        object.setValue(customerEmailReg.text!, forKey: "email")
        object.setValue(customerAddressReg.text!, forKey: "address")
       // object.setValue(customerMobileReg.text!, forKey: "mobile")
        let phoneNumber = Double(customerMobileReg.text!)
        object.setValue(phoneNumber, forKey: "mobile")
        object.setValue(customerPassReg.text!, forKey: "password")
        do{
        try context.save()
        }catch{
            print("error")
        }
        
        try! context.save()
        
        let alert = UIAlertController(title: "Successful", message: "Customer Details Added Successfully.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
}


    
    @IBAction func onCancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
