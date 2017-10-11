//
//  ViewController.swift
//  NavigationDrawer
//
//  Created by Sowrirajan Sugumaran on 05/10/17.
//  Copyright © 2017 Sowrirajan Sugumaran. All rights reserved.
//

import UIKit

// Link the Drawer view delegate method to access the protocol methods
class ViewController: UIViewController, DrawerControllerDelegate {

    // 1.Decllare the drawer view
    var drawerVw = DrawerView()
    
    var vwBG = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
    }

    @IBAction func actShowMenu(_ sender: Any) {

        //**** REQUIRED ****//
        //**** 2.Implement the drawer view object and set delecate to current view controller
        drawerVw = DrawerView(aryControllers:DrawerArray.array, isBlurEffect:true, isHeaderInTop:false, controller:self)
        drawerVw.delegate = self
        
        // Can change account holder name
        drawerVw.changeUserName(name: "Sowrirajan Sugumaran")
        
        // 3.show the Navigation drawer.
        drawerVw.show()
        
        
        
    }

    // 6.To push the viewcontroller which is selected by user.
    func pushTo(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// 7.Struct for add storyboards which you want show on navigation drawer
struct DrawerArray {
    static let array:NSArray = ["MyAccount", "Offers", "History","Offers", "Language", "Settings", "History"]
}


