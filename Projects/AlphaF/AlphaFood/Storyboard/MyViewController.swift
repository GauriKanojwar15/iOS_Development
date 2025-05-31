//
//  ViewController.swift
//  AlphaFood
//
//  Created by admin on 8/27/21.
//

import UIKit


class ResultsVC: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemBlue
    }
}

class MyViewController: UIViewController, UISearchResultsUpdating {

    let searchController = UISearchController(searchResultsController: ResultsVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        
       
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {return}
        let vc = searchController.searchResultsController as? ResultsVC
        vc?.view.backgroundColor = .systemTeal
        print(text)
    }

}
