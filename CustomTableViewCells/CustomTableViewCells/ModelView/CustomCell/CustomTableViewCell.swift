//
//  CustomTableViewCell.swift
//  CustomTableViewCells
//
//  Created by AlphaDVLPR on 8/5/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var IconImageView: UIImageView!
    @IBOutlet weak var isOnSwitch: UISwitch!
    
    var setting: Settings? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
        if let setting = setting {
            
            IconImageView.image = setting.icon
            NameLabel.text = setting.name
            isOnSwitch.isOn = setting.isOn
            
            backgroundColor = setting.isOn ? .lightGray : .white
        } else {
            
            
        }
    }
    }


