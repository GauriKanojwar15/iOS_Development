//
//  RestuarantViewCell.swift
//  AlphaFood
//
//  Created by admin on 9/3/21.
//

import Foundation
import UIKit

class RestaurantViewCell: UITableViewCell {

    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var restaurantTitleLabel: UILabel!
    @IBOutlet weak var restaurantTypeLabel: UILabel!
    @IBOutlet weak var restaurantCityLabel: UILabel!
    @IBOutlet weak var restaurantPriceLabel: UILabel!
    
   
    func setRestaurant(restaurant: RestaurantObject) {
        restaurantImageView.image = restaurant.image
        restaurantTitleLabel.text = restaurant.title
        restaurantTypeLabel.text = restaurant.type
        restaurantCityLabel.text = restaurant.city
       // restaurantPriceLabel.text = restaurant.price
    }
    
    func cornerRad() {
        restaurantImageView.layer.cornerRadius = 10
    }
}

