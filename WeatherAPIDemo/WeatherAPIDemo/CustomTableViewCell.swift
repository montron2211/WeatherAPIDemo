//
//  CustomTableViewCell.swift
//  WeatherAPIDemo
//
//  Created by Monmon on 5/13/19.
//  Copyright © 2019 Monmon. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
     @IBOutlet weak var countryLabel: UILabel!
    
     @IBOutlet weak var localTimeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
