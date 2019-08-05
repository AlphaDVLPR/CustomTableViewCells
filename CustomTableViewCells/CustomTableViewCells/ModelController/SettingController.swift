//
//  SettingController.swift
//  CustomTableViewCells
//
//  Created by AlphaDVLPR on 8/5/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

import Foundation

class SettingController {
    
    static let sharedInstance = SettingController()
    
    var settings = [Settings]()
    
    init() {
        
        let apps = Settings(name: "apps", icon: #imageLiteral(resourceName: "apps"))
        let books = Settings(name: "Books", icon: #imageLiteral(resourceName: "books"))
        let music = Settings(name: "music", icon: #imageLiteral(resourceName: "music"))
        
        settings = [apps, books, music]
    }
    
}
