### SPNavigationDrawer

3 steps to integrate the SPNavigationDrawer on your iOS application with Swift 3.0

![Screenshot]()

**INSTALLATION** 

- Drag and drop the Configuration folder to your project and initialize it.
- Then link the delegate protocol for accessing the delegate methods. 
- let's implement the drawer view object and set delecate to current view controller.
- show the Navigation drawer (drawerVw.show())
- You're done. Go Ahead :-)

    var drawerVw = DrawerView()
        drawerVw = DrawerView(aryControllers:DrawerArray.array, isBlurEffect:true, isHeaderInTop:false, controller:self)
        drawerVw.delegate = self
        drawerVw.changeUserName(name: "Sowrirajan Sugumaran")
        drawerVw.show()
        
 Denote the storyboard of viewcontrollers which wnat you show on SPNavigationDrawer.
 
    struct DrawerArray {
    static let array:NSArray = ["MyAccount", "Offers", "History","Offers", "Language", "Settings", "History"]
    }
    
## Authors

[Ssowri1](https://github.com/ssowri1)

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details

### Support or Contact

Having trouble with Pages? Kindly [contact support](https://github.com/contact) and we’ll help you sort it out.
