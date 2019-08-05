//
//  Models.swift
//  CustomTableViewCells
//
//  Created by AlphaDVLPR on 8/5/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

import Foundation
import UIKit

class Settings {
    
    let name: String
    var isOn: Bool
    let icon: UIImage
    
    init(name: String, icon: UIImage, isOn: Bool = false) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
    
    
}
