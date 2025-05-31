//
//  MainViewController.swift
//  AlphaFood
//
//  Created by admin on 8/19/21.
//

import UIKit

class MainViewController: UIViewController {

   
    @IBOutlet weak var customerButton: UIButton!
    @IBOutlet weak var adminButton: UIButton!
    @IBOutlet weak var restButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        customerButton.designButton()
        restButton.designButton()
        adminButton.designButton()
 
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//        title = "Search"
    }

    @IBAction func onUser(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "UserLoginViewController") as! UserLoginViewController
        navigationController?.pushViewController(vc, animated: true)
  
    }
    
    
    @IBAction func onRestorant(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "RestaurantViewController") as! RestaurantViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func onAdmin(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "AdminLoginViewController") as! AdminLoginViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension UIButton {
    func designButton(){
        self.backgroundColor = UIColor.red
        
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }
    
}

