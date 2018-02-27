//
//  SideMenuProfileTableViewCell.swift
//  SM
//
//  Created by Akaanksha Sharman on 27/02/18.
//  Copyright © 2018 Akaanksha Sharman. All rights reserved.
//

import UIKit

class SideMenuProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var imageVwBackgrnd: UIImageView!
    @IBOutlet weak var imageVwProfilePic: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblUserEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
