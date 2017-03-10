//
//  MyTableViewCell.swift
//  MyTube
//
//  Created by Noel Nolan Masters on 3/9/17.
//  Copyright © 2017 Noel. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var someTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(myData: MyData) {
        someTitle.text = myData.someTitle
    }

}
