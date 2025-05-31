//
//  AdminViewController.swift
//  AlphaFood
//
//  Created by admin on 8/20/21.
//

import UIKit

class AdminViewController: UIViewController {

    @IBOutlet weak var btnRestaurntOutlet: UIButton!
    @IBOutlet weak var btnCustomerOutlet: UIButton!
    @IBOutlet weak var btnFoodItemsOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLooks()
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func onCustomerDetails(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CustomerDetailsViewController") as! CustomerDetailsViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
  
    @IBAction func onRestorantDetails(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "RestaurantDetailsViewController") as! RestaurantDetailsViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnViewFoodItems(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "FoodItemsDetailsViewController") as! FoodItemsDetailsViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func buttonLooks (){
        btnCustomerOutlet.layer.cornerRadius = 10
        btnRestaurntOutlet.layer.cornerRadius = 10
        btnFoodItemsOutlet.layer.cornerRadius = 10
    }
    
}
