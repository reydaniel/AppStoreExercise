//
//  AppCell.swift
//  AppStore
//
//  Created by ReyDaniel on 02/06/21.
//

import UIKit

class AppCell: UITableViewCell {
    
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var appDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
