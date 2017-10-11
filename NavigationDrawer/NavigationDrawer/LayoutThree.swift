//
//  LayoutThree.swift
//  NavigationDrawer
//
//  Created by Sowrirajan Sugumaran on 05/10/17.
//  Copyright © 2017 Sowrirajan Sugumaran. All rights reserved.
//

import UIKit

class LayoutThree: UIViewController, DrawerControllerDelegate {
    var drawerVw = DrawerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pushTo(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func actShowMenu(_ sender: Any) {
        drawerVw = DrawerView(aryControllers:DrawerArray.array, isBlurEffect:false, isHeaderInTop:true, controller:self)
        drawerVw.delegate = self
        
        drawerVw.changeProfilePic(img: #imageLiteral(resourceName: "proPicTwo.png"))
        drawerVw.changeGradientColor(colorTop: UIColor(red:0.788, green: 0.078, blue: 0.435, alpha: 1.00), colorBottom: UIColor(red:0.929, green: 0.204, blue: 0.165, alpha: 1.00))

        drawerVw.changeCellTextColor(txtColor: UIColor.white)
        drawerVw.changeUserNameTextColor(txtColor: UIColor.lightText)
        drawerVw.changeFont(font:UIFont(name:"Marker Felt", size:18)!)
        drawerVw.show()
    }

}
