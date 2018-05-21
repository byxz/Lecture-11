//
//  CustomeCell.swift
//  Lecture 11
//
//  Created by Mac on 19.05.2018.
//  Copyright © 2018 testOrg. All rights reserved.
//

import UIKit

class CustomeCell: UITableViewCell {
    
    
    @IBOutlet var flagPicture: UIImageView!
    @IBOutlet var nameOfTheCountry: UILabel!
    @IBOutlet var labelNameOfThePresident: UILabel!
    @IBOutlet var nameOfThePresident: UILabel!
    @IBOutlet var labelOfUrl: UILabel!
    @IBOutlet var url: UILabel!
    
    @IBOutlet var centrConstraint: NSLayoutConstraint!
    @IBOutlet var leftConstraint: NSLayoutConstraint!
    
    @IBOutlet var widthOfFlag: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
