//
//  UserLoginViewController.swift
//  AlphaFood
//
//  Created by admin on 8/19/21.
//

import UIKit

class UserLoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var customerEmailLogin: UITextField!
    @IBOutlet weak var customerPassLogin: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//        loginButton.applyDesign5()
        // Do any additional setup after loading the view.
    }
    @IBAction func onLogin(_ sender: Any) {
        
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
                    
                
                
                
                if let email = customerEmailLogin.text, let password = customerPassLogin.text {
                        
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
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    @IBAction func onResterUser(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let vc = storyboard.instantiateViewController(identifier: "UserRegisterViewController") as! UserRegisterViewController
       navigationController?.pushViewController(vc, animated: true)
    }
    
   

}
extension UIButton{
    func applyDesign5(){
        // self.backgroundColor = UIColor.black
        
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }
}
