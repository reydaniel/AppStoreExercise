//
//  AppModel.swift
//  AppStore
//
//  Created by ReyDaniel on 03/06/21.
//

import UIKit

struct AppModel {
    let thumb: UIImage
    let title: String
    let developer: String
    let description: String
    let url: String
    let image: Images
    
    struct Images {
        let first: String
        let second: String
        let third: String
        let fourth: String
        let fifth: String
    }
}
