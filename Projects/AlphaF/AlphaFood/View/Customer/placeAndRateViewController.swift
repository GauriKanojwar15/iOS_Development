//
//  placeAndRateViewController.swift
//  AlphaFood
//
//  Created by admin on 8/25/21.
//

import UIKit

class placeAndRateViewController: UIViewController {
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var lableQuanty: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
   
    
    
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.hidesWhenStopped = true
    }
    
    @IBAction func onChangeValue() {
        lableQuanty.text = "\(stepper.value)"
    }
    
    @IBAction func onPayment(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onStopAnimation), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func onPaceOrder() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "RatingViewController") as! RatingViewController
        navigationController?.pushViewController(vc, animated: true)
        let alert = UIAlertController(title: "Successful", message: "Order Placed.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    @objc func onStopAnimation()  {
        
        spinner.startAnimating()
        
        let alert = UIAlertController(title: "Successful", message: "Your Payment is Done.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2)
        {
            self.spinner.stopAnimating()
            self.timer.invalidate()
            
        }
    }
}
