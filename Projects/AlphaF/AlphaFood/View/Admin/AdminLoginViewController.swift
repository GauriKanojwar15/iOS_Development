//
//  AdminLoginViewController.swift
//  AlphaFood
//
//  Created by admin on 8/20/21.
//

import UIKit

class AdminLoginViewController: UIViewController {
    
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editPass: UITextField!
    
    let emailtxt = "afood@gmail.com"
    let passtxt = "Afood@123"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
            
    @IBAction func onAdminLogin(_ sender: Any) {
        
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
        
        if let email = editEmail.text, let password = editPass.text{
            
            if !isEmailValid(str: email) {
                print("email is not valid")
                
                let alert = UIAlertController(title: "Note", message: "Email is not valid", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: nil))
                present(alert, animated: true, completion: nil)
            }
            
            else if !isValidPassword(str: password) {
                print("Password is not valid")
                
                let alert = UIAlertController(title: "Note", message: "Password is Not Valid", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: nil))
                present(alert, animated: true, completion: nil)
            }
        }
        
        if emailtxt == editEmail.text! && passtxt == editPass.text {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "AdminViewController") as! AdminViewController
            navigationController?.pushViewController(vc, animated: true)
        }
        else {
            
            let alert = UIAlertController(title: "Alert", message: "You Are Not Admin", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
}
