//
//  RestaurantLoginViewController.swift
//  AlphaFood
//
//  Created by admin on 8/20/21.
//

import UIKit

class RestaurantLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnRestaurantRegister(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
