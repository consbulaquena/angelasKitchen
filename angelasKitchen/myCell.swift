//
//  myCell.swift
//  angelasKitchen
//
//  Created by Cons Bulaqueña on 27/03/2017.
//  Copyright © 2017 consios. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet var myImageView: UIImageView!

    @IBOutlet var myLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
