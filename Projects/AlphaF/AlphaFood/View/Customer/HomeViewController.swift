
//--------------------------------------------------------
import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var scrollImage1: UIImageView!
    @IBOutlet weak var scrollImage2: UIImageView!
    @IBOutlet weak var scrollImage3: UIImageView!
    @IBOutlet weak var scrollImage4: UIImageView!
    @IBOutlet weak var scrollImage5: UIImageView!
    @IBOutlet weak var scrollImage6: UIImageView!
    
    @IBOutlet weak var restaurantTableView: UITableView!
    var restaurants: [RestaurantObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        restaurants = createArray()
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
        configureItems()
        outlets()
        
    }
    
    private func configureItems() {
//        navigationItem.titleView = UIImageView(image: UIImage(systemName: "snow"))
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .done, target: self, action: #selector(onItems))
    }
    @objc func onItems(){
        let storyboard = UIStoryboard(name: "main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "OrderFoodViewController") as! OrderFoodViewController
        navigationController?.pushViewController(vc, animated: true)
    }

    func createArray() -> [RestaurantObject] {
        var tempRestaurants: [RestaurantObject] = []

        let rest1 = RestaurantObject(image: #imageLiteral(resourceName: "pizza"), title: "Pizza Hut", type: "Italian, Fast Food", city: "Kalyan", price: "₹399")
        let rest2 = RestaurantObject(image: #imageLiteral(resourceName: "chaat"), title: "Roohi Snacks Corner", type: "Fast Food", city: "Thane", price: "₹350")
        let rest3 = RestaurantObject(image: #imageLiteral(resourceName: "burger"), title: "Burger King", type: "American, Fast Food", city: "Thane", price: "₹400")
        let rest4 = RestaurantObject(image: #imageLiteral(resourceName: "puri"), title: "Pet Pooja Point", type: "Indian", city: "Mumbai", price: "₹249")
        let rest5 = RestaurantObject(image: #imageLiteral(resourceName: "noodles"), title: "Chopsticks", type: "Chinese", city: "Kalyan", price: "₹299")
        let rest6 = RestaurantObject(image: #imageLiteral(resourceName: "pulaw"), title: "Bismillah's Biryani", type: "Indian", city: "Mumbai", price: "₹350")
        let rest7 = RestaurantObject(image: #imageLiteral(resourceName: "pulaw"), title: "Ribbon's and Ballons", type: "Sweets, Cakes", city: "Kalyan", price: "₹300")

        tempRestaurants.append(rest1)
        tempRestaurants.append(rest2)
        tempRestaurants.append(rest3)
        tempRestaurants.append(rest4)
        tempRestaurants.append(rest5)
        tempRestaurants.append(rest6)
        tempRestaurants.append(rest7)

        return tempRestaurants
        
        
    }
    func outlets() {
        scrollImage1.layer.cornerRadius = 10
        scrollImage2.layer.cornerRadius = 10
        scrollImage3.layer.cornerRadius = 10
        scrollImage4.layer.cornerRadius = 10
        scrollImage5.layer.cornerRadius = 10
        scrollImage6.layer.cornerRadius = 10
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let restaurant = restaurants[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewCell") as! RestaurantViewCell
        cell.setRestaurant(restaurant: restaurant)
        cell.cornerRad()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "FoodCollectionViewController") as! FoodCollectionViewController
        navigationController?.pushViewController(vc, animated: true)
    }

}

