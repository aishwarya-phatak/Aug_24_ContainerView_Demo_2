//
//  LunchItemsViewController.swift
//  Aug_24_ContainerView_Demo_2
//
//  Created by Vishal Jagtap on 15/10/24.
//

import UIKit

class LunchItemsViewController: UIViewController {

    @IBOutlet weak var lunchItemsCollectionView: UICollectionView!
    let reuseIdentifierForLunchItemCollectionViewCell = "LunchItemsCollectionViewCell"
    var lunchItems = [LunchItem(lunchItemName: "Roti", lunchItemPrice: 30.0),
                      LunchItem(lunchItemName: "Paneer Masala", lunchItemPrice: 200.0),
                      LunchItem(lunchItemName: "Veg Kadhai", lunchItemPrice: 200.0),
                      LunchItem(lunchItemName: "Pulav", lunchItemPrice: 175.0),
                      LunchItem(lunchItemName: "Puran Poli", lunchItemPrice: 40.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViews()
        registerXIBWithCollectionView()
    }
    
    private func initializeViews(){
        lunchItemsCollectionView.delegate = self
        lunchItemsCollectionView.dataSource = self
    }
    
    private func registerXIBWithCollectionView(){
        let uiNib = UINib(nibName: reuseIdentifierForLunchItemCollectionViewCell, bundle: nil)
        
        self.lunchItemsCollectionView.register(uiNib, forCellWithReuseIdentifier: reuseIdentifierForLunchItemCollectionViewCell)
    }

}


extension LunchItemsViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        lunchItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let lunchItemCollectionViewCell = self.lunchItemsCollectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierForLunchItemCollectionViewCell, for: indexPath) as! LunchItemsCollectionViewCell
        
        lunchItemCollectionViewCell.lunchItemNameLabel.text = lunchItems[indexPath.item].lunchItemName
        lunchItemCollectionViewCell.lunchItemPriceLabel.text = String(lunchItems[indexPath.item].lunchItemPrice)
        
        return lunchItemCollectionViewCell
    }
}
extension LunchItemsViewController : UICollectionViewDelegate{
    
    
}


extension LunchItemsViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 120.0, height: 120.0)
    }
}
