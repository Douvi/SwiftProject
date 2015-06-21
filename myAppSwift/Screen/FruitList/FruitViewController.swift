//
//  ViewController.swift
//  myAppSwift
//
//  Created by Edouard Roussillon on 2015-06-21.
//  Copyright (c) 2015 Edouard Roussillon. All rights reserved.
//

import UIKit

class FruitViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var list:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Fruit List"
        self.list = ["Banana", "Apple", "Kiwi", "Avocado", "Pear"]
    }
    
    // MARK - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("FruitTableViewCell", forIndexPath: indexPath) as FruitTableViewCell
        var fruit = self.list[indexPath.row]
        cell.bindContent(fruit)
        return cell
    }
    
    // MARK - UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let storyboard = UIStoryboard(name: "FruitDetails", bundle: nil)
        var fuitDetails: FruitDetailsViewController = storyboard.instantiateViewControllerWithIdentifier("FruitDetailsViewController") as FruitDetailsViewController;
    
        fuitDetails.mObject = FruitDetailsInfo(label:self.list[indexPath.row], image:nil, details:"2015-06-21 14:54:40.866 myAppSwift[8940:318653] Warning once only: Detected a case where constraints ambiguously suggest a height of zero for a tableview cell's content view. We're considering the collapse unintentional and using standard height instead.");
        
        self.navigationController?.pushViewController(fuitDetails, animated: true);
        
    }
    
}

