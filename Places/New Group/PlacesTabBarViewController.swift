//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Conner on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers { // list of child view controllers for each tab
            if let vc = childVC as? PlacesPresenter {
                vc.placeController = placeController
//                placesTableViewController.placeController = placeController
//                vc.placeController = placeController
            }
        }
    }
    
    let placeController = PlaceController()

}
