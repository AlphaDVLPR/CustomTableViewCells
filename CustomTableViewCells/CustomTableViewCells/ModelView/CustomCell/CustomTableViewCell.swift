//
//  CustomTableViewCell.swift
//  CustomTableViewCells
//
//  Created by AlphaDVLPR on 8/5/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    func cellSettingSwitchValueChange(cell: CustomTableViewCell, isOn: Bool)
}
class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var IconImageView: UIImageView!
    @IBOutlet weak var isOnSwitch: UISwitch!
    
    weak var delegate: CustomTableViewCell?
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
    
    @IBAction func settingSwitchValueChange(_ sender: Any) {
        delegate?.settingSwitchValueChange(cell: self, isOn: isOnSwitch.isOn)
    }
    
    }



