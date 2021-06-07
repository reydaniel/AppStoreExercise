//
//  ImageCollectionViewCell.swift
//  AppStore
//
//  Created by ReyDaniel on 05/06/21.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageCollection: UIImageView!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageCollection.layer.cornerRadius = 4
        imageCollection.clipsToBounds = true
    }
}
