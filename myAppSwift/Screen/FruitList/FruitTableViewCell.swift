//
//  FruitTableViewCell.swift
//  myAppSwift
//
//  Created by Edouard Roussillon on 2015-06-21.
//  Copyright (c) 2015 Edouard Roussillon. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func bindContent(fruit: NSString) {
        label.text = fruit;
    }

}
