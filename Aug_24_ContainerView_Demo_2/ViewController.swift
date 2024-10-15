//
//  ViewController.swift
//  Aug_24_ContainerView_Demo_2
//
//  Created by Vishal Jagtap on 15/10/24.
//

import UIKit

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
        if (foodItemsSegmentedController.selectedSegmentIndex == 0){
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
