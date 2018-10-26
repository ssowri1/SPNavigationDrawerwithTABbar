### SPNavigationDrawer

This is a Custom Navigation controller along with tab bar controller in iOS and it's made in Swift 3.
There are 3 steps only to integrate the SPNavigationDrawerWithTABbar.
Using **SPNavigationDrawer** can integrate **NavigationDrawer** alongwith **TABbarController**

![Screenshot](https://github.com/ssowri1/SPNavigationDrawerwithTABbar/blob/master/Screenshot.gif?raw=true)

**INSTALLATION** 

- Drag and drop the Configuration folder into your project and initialize it.
- Then link the delegate protocol for accessing the delegate methods. 
- let's implement the drawer view object and set delecate to current view controller.
- Connect the tab bar controller with your view controller in StoryBoard
- show the Navigation drawer (drawerVw.show())

         //**** REQUIRED ****//
        //**** Implement the drawer view object and set delecate to current view controller
        drawerVw = DrawerView(aryControllers:DrawerArray.array, isBlurEffect:true, isHeaderInTop:false, controller:self)
        drawerVw.delegate = self
        
        // Can change account holder name
        drawerVw.changeUserName(name: "Sowrirajan Sugumaran")
        
        // show the Navigation drawer.
        drawerVw.show()
        
Push the viewcontroller which is selected by user.

        
    // To push the viewcontroller which is selected by user.
    func pushTo(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }

Denote the storyboard of viewcontrollers which want you show on SPNavigationDrawer.
 
        struct DrawerArray {
        static let array:NSArray = ["MyAccount", "Offers", "History","Offers", "Language", "Settings", "History"]
        }
    
    
## Authors

[Ssowri1](https://github.com/ssowri1)

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details

### Support or Contact

Having trouble with Pages? Kindly [contact support](https://github.com/contact) and we’ll help you sort it out.
