//
//  FoodCollectionViewController.swift
//  AlphaFood
//
//  Created by admin on 8/31/21.
//

import UIKit

class FoodCollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let foodTitle :[String] = ["Pizza", "Chaat","Burger","PuriBhajii","Noodles","Idli","Biryani","Cake"]
    let foodImage : [String] = ["pizza", "chaat","burger1","puri","noodles","idli1","biryani","cake"]
    let foodPrice : [String] = ["Rs. 150", "Rs. 100","Rs. 220","Rs. 120","Rs. 260","Rs. 100","Rs. 280","Rs. 300"]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource=self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
               
    }
    
    @IBAction func onBackHome(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
   
}
extension FoodCollectionViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCollectionViewCell", for: indexPath) as! FoodCollectionViewCell
        cell.foodImageView.image = UIImage(named: foodImage[indexPath.row])
        cell.foodTitleLable.text = foodTitle[indexPath.row]
        cell.foodPriceLable.text = foodPrice[indexPath.row]
        cell.layer.cornerRadius =  10
        cell.layer.borderWidth = 1
        //cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodTitle.count
    }
}
extension FoodCollectionViewController : UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let title = foodTitle[indexPath.row]
        let price = foodPrice[indexPath.row]
        let image = UIImage(named: foodImage[indexPath.row])
        print("selected item =\(title)")
        print("selected item =\(price)")
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "OrderFoodViewController") as! OrderFoodViewController
        vc.itemName = title
        vc.itemPrice = price
        vc.itemImage = image
        navigationController?.pushViewController(vc, animated: true)
 
        //present(vc, animated: true, completion: nil)
    }

}
extension FoodCollectionViewController : UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 400, height: 500)
        }
    
    
}
