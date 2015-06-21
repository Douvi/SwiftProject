//
//  FruitDetailsViewController.swift
//  myAppSwift
//
//  Created by Edouard Roussillon on 2015-06-21.
//  Copyright (c) 2015 Edouard Roussillon. All rights reserved.
//

import UIKit

struct FruitDetailsInfo {
    var label:NSString
    var image:NSURL?
    var details:NSString
}

class FruitDetailsViewController: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var contentDetails: UITextView!
    var mObject:FruitDetailsInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Fruit Details"
        self.label.text = mObject.label
        self.contentDetails.text = mObject.details
    }
}
