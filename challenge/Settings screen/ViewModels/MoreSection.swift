//
//  SettingsViewModeFriendsItem.swift
//  challenge
//
//  Created by Thành Đỗ Long on 26/11/2018.
//  Copyright © 2018 Thành Đỗ Long. All rights reserved.
//

import Foundation

class MoreSection: SettingsSection {
    var type: SettingsSectionType {
        return .more
    }
    
    var items : [SettingsItem]
    
    var sectionTitle: String? {
        return "About ESN Challenge"
    }
    
    var rowCount: Int {
        return items.count
    }
    
    init(items: [SettingsItem]){
        self.items = items
    }
}
