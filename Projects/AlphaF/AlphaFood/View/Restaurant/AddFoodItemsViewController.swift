//
//  AddFoodItemsViewController.swift
//  AlphaFood
//
//  Created by admin on 8/25/21.
//

import UIKit
import CoreData

class AddFoodItemsViewController: UIViewController {
    
    @IBOutlet weak var addItems: UIButton!
    @IBOutlet weak var viewItems: UIButton!
    @IBOutlet weak var editFoodName: UITextField!
    
    @IBOutlet weak var editFoodPrice: UITextField!
    
    @IBOutlet weak var editFoodType: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addItems.design()
        viewItems.design()
        editFoodName.textdesign()
        editFoodType.textdesign()
        editFoodPrice.textdesign()
    }
    
    @IBAction func OnAddFoodItems()
    {
        let app = UIApplication.shared
        let appDelegate = app.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let object = NSEntityDescription.insertNewObject(forEntityName: "FoodItems", into: context)
        
        if editFoodName.text == nil, editFoodPrice.text == nil, editFoodType.text == nil {
            
            print("Fields are empty")
            
            let alert = UIAlertController(title: "Alert", message: "Empty Fields ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }else {
            
            object.setValue(editFoodName.text!, forKey: "name")
            object.setValue(editFoodType.text!, forKey: "type")
            
            let foodPrice = Double(editFoodPrice.text!)
            object.setValue(foodPrice, forKey: "price")
            
            do{
                try context.save()
            }catch{
                print("error")
            }
            
            try! context.save()
        }

        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "FoodItemsDetailsViewController") as! FoodItemsDetailsViewController
//        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func onViewFoodItems() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "FoodItemsDetailsViewController") as! FoodItemsDetailsViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
extension UITextField {
    func textdesign() {
        self.layer.cornerRadius = 10
    }
}

extension UIButton {
    func design() {
        self.layer.cornerRadius = 10
////        self.backgroundColor = UIColor.red
//
//        self.setTitleColor(UIColor.white, for: .normal)
//        self.layer.cornerRadius = self.frame.height / 2
//        self.layer.shadowColor = UIColor.lightGray.cgColor
//        self.layer.shadowRadius = 10
//        self.layer.shadowOpacity = 0.5
//        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }
}
