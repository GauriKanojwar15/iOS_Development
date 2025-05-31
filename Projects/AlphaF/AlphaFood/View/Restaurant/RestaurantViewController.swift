//
//  RestaurantViewController.swift
//  AlphaFood
//
//  Created by admin on 8/20/21.
//

import UIKit

class RestaurantViewController: UIViewController {
    
    @IBOutlet weak var addRestaurant: UIButton!
    @IBOutlet weak var editREmail: UITextField!
    @IBOutlet weak var editRPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        addRestaurant.layer.cornerRadius = 10
        editREmail.uiText()
        editRPass.uiText()
        
    }
    
   
    @IBAction func onRestaurantRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "RestaurantRegistrationViewController") as! RestaurantRegistrationViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onRestaurantlogin(_ sender: Any) {
        
        func isEmailValid(str: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
            let testmail = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
            return testmail.evaluate(with: str)
        }
        
        func isValidPassword(str: String) -> Bool {
            let inputRegEx = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()-_+={}?>.<,:;~`']{8,}$"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with: str)
        }

        if let email = editREmail.text, let password = editRPass.text{
            
            if !isEmailValid(str: email)
            {
                
                print("email is not valid")
                
                let alert = UIAlertController(title: "Note", message: "Email is not valid", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: nil))
                present(alert, animated: true, completion: nil)}
            
            else if !isValidPassword(str: password){
                
                print("Password is not valid")
                
                let alert = UIAlertController(title: "Note", message: "Password is Not Valid", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: nil))
                present(alert, animated: true, completion: nil)}
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "AddFoodItemsViewController") as! AddFoodItemsViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func alert() {
        let alert = UIAlertController(title: "Successful", message: "Restaurant Added By Admin Permission.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
   
}
extension UIButton{
    func applyDesign6(){
        self.backgroundColor = UIColor.darkGray
        
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }
}
extension UITextField{
    func uiText(){
        self.layer.cornerRadius = 15
        //self.frame.height / 2
    }
}
 
