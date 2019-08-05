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
    let isOn: Bool
    let icon: UIImage
    
    init(name: String, icon: UIImage) {
        self.name = name
        self.icon = icon
    }
    
    
}