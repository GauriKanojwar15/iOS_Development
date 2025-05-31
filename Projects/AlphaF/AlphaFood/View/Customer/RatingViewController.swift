//
//  RatingViewController.swift
//  AlphaFood
//
//  Created by admin on 8/26/21.
//

import UIKit

class RatingViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var onRating: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackCart(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "OrderFoodViewController") as! OrderFoodViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onSliderRating(_ sender: Any) {
        let rate = Int(slider.value)
        onRating.text = "Rating: \(rate)"
    }
    
    @IBAction func ongoBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}
