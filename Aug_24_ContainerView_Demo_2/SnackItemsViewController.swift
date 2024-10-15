//
//  SnackItemsViewController.swift
//  Aug_24_ContainerView_Demo_2
//
//  Created by Vishal Jagtap on 15/10/24.
//

import UIKit

class SnackItemsViewController: UIViewController {
    
    @IBOutlet weak var snackItemsTableView: UITableView!
    let reuseIdentifierForSnackItemTableViewCell = "SnackItemsTableViewCell"
    
    var snackItems = [SnackItem(snackItemName: "Poha", snackItemPrice: 30.0),
                      SnackItem(snackItemName: "Upma", snackItemPrice: 30.0),
                      SnackItem(snackItemName: "Samosa", snackItemPrice: 20.0),
                      SnackItem(snackItemName: "Dosa", snackItemPrice: 70.0),
                      SnackItem(snackItemName: "Dabeli", snackItemPrice: 15.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       initializeTableView()
       registerXIBWithTableView()
    }
    
    func initializeTableView(){
        snackItemsTableView.delegate = self
        snackItemsTableView.dataSource = self
    }
    
    func registerXIBWithTableView(){
        let uiNib = UINib(nibName: reuseIdentifierForSnackItemTableViewCell, bundle: nil)
        self.snackItemsTableView.register(uiNib, forCellReuseIdentifier: reuseIdentifierForSnackItemTableViewCell)
    }
}

extension SnackItemsViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        snackItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let snackItemsTableViewCell = self.snackItemsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierForSnackItemTableViewCell, for: indexPath) as! SnackItemsTableViewCell
        
        snackItemsTableViewCell.snackItemNameLabel.text = snackItems[indexPath.row].snackItemName
        snackItemsTableViewCell.snackItemPriceLabel.text = String(snackItems[indexPath.row].snackItemPrice)
        
        return snackItemsTableViewCell
    }
}

extension SnackItemsViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
}
