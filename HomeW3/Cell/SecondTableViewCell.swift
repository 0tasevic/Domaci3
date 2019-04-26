//
//  SecondTableViewCell.swift
//  HomeW3
//
//  Created by Milos Otasevic on 25/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet var sameLogoCollection: [UIImageView]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 18
        self.clipsToBounds = true
    }
}
