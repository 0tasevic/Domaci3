//
//  LogoCollectionViewCell.swift
//  HomeW3
//
//  Created by Milos Otasevic on 26/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class LogoCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var logoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = self.layer.bounds.width 
    }
    
}
