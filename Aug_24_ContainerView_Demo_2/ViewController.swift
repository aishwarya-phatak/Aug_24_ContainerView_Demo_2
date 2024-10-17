//
//  ViewController.swift
//  Aug_24_ContainerView_Demo_2
//
//  Created by Vishal Jagtap on 15/10/24.
//

import UIKit
import SDWebImage
import Kingfisher

class ViewController: UIViewController {
        
    @IBOutlet weak var foodItemsSegmentedController: UISegmentedControl!
    @IBOutlet weak var containerViewForSnackItems: UIView!
    @IBOutlet weak var containerViewForLunchItems: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        displaySnackAndLucnhItems()
    }
    
    @IBAction func foodItemsSegmentedController(_ sender: UISegmentedControl) {
        
        print(sender.selectedSegmentIndex)
        print(sender.numberOfSegments)
        print(sender.tag)
        print(sender.titleForSegment(at: 1)!)
        
//        //way 2
//        switch(sender.tag){
//            case 1 :
//                containerViewForSnackItems.isHidden  = false
//                containerViewForLunchItems.isHidden = true
//            case 2 :
//                containerViewForSnackItems.isHidden = true
//                containerViewForLunchItems.isHidden = false
//            case 3 :
//                print(sender.tag)
//            default :
//                print("No case matched!")
//        }
        
////        way 3
//        if ((sender.titleForSegment(at: 0)!) == "Snack Items"){
//            containerViewForSnackItems.isHidden = false
//            containerViewForLunchItems.isHidden = true
//        } else if ((sender.titleForSegment(at: 1)!) == "Lunch Items") {
//            containerViewForLunchItems.isHidden = false
//            containerViewForSnackItems.isHidden = true
//        } else {
//            print("\(sender.titleForSegment(at: 2)!)")
//        }
        
//        way 1
        if (sender.selectedSegmentIndex == 0){
            containerViewForSnackItems.isHidden = false
            containerViewForLunchItems.isHidden = true
        } else {
            containerViewForLunchItems.isHidden = false
            containerViewForSnackItems.isHidden = true
        }
    }
    
//    private func displaySnackAndLucnhItems(){
//        
//        
//    }
}
