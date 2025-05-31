//
//  OrderViewController.swift
//  AlphaFood
//
//  Created by admin on 9/1/21.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var orderImage: UIImageView!
    @IBOutlet weak var orderTitle: UILabel!
    @IBOutlet weak var orderPrice: UILabel!
    
    @IBOutlet weak var stepperLable: UIStepper!
    @IBOutlet weak var quantityLable: UILabel!
    @IBOutlet weak var spinnerLable: UIActivityIndicatorView!
    
    var itemName: String?
    var itemPrice: String?
    var itemImage: UIImage?
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orderTitle.text = "\(itemName!)"
        orderPrice.text = "\(itemPrice!)"
        orderImage.image = itemImage
        spinnerLable.hidesWhenStopped = true
        
    }
    

    @IBAction func onQuntityChange(_ sender: Any) {
    quantityLable.text = "\(stepperLable.value)"
        
    }
    @IBAction func payOrder(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onStopAnimation), userInfo: nil, repeats: true)
        
    }
    @IBAction func placeOrder(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "RatingViewController") as! RatingViewController
        navigationController?.pushViewController(vc, animated: true)
        
        let alert = UIAlertController(title: "Successful", message: "Order Placed.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
        
    }
    
    @objc func onStopAnimation()  {
        
        spinnerLable.startAnimating()
        
        let alert = UIAlertController(title: "Successful", message: "Your Payment is Done.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2)
        {
            self.spinnerLable.stopAnimating()
            self.timer.invalidate()
            
        }
    }
    
    
    @IBAction func place(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
