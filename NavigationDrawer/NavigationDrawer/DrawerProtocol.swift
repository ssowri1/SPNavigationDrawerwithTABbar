//
//  DrawerProtocol.swift
//  NavigationDrawer
//
//  Created by Sowrirajan Sugumaran on 05/10/17.
//  Copyright © 2017 Sowrirajan Sugumaran. All rights reserved.
//

import UIKit
import Foundation


protocol drawerProtocolNew{
    // protocol methods for showing and dissmissing navigation drawer
    func show()
    func dissmiss()

    var backgroundView : UIView{set get}
    var drawerView : UIView{set get}
}

extension drawerProtocolNew where Self:UIView{
    
    // UIView animation for showing the navigation drawer
    func show()
    {
        self.drawerView.frame.origin = CGPoint(x:-self.frame.size.width, y:0)
        backgroundView.alpha = 0.0

        UIApplication.shared.delegate?.window??.rootViewController?.view.addSubview(self)
        UIView.animate(withDuration: 0.3) {
            self.backgroundView.alpha = 0.6
            self.drawerView.frame.origin = CGPoint(x:0, y:0)
        }
    }
    
    // UIView animation for hiding the navigation drawer
    func dissmiss()
    {
       UIView.animate(withDuration: 0.2, animations: {
        self.drawerView.frame.origin = CGPoint(x:-self.frame.size.width, y:0)
        self.backgroundView.alpha = 0.0
        
       }) { (completion) in
            self.removeFromSuperview()
        }
    }
    
}
