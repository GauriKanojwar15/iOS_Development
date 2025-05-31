//
//  RestaurantObject.swift
//  AlphaFood
//
//  Created by admin on 9/3/21.
//

import Foundation
import UIKit

class RestaurantObject {
    var image: UIImage
    var title: String
    var type: String
    var city: String
    var price: String
    
    init(image: UIImage, title: String, type: String, city: String, price: String) {
        self.image = image
        self.title = title
        self.type = type
        self.city = city
        self.price = price
    }
    
    
}
