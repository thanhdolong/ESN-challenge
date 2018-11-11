//
//  Location.swift
//  challenge
//
//  Created by Thành Đỗ Long on 30/10/2018.
//  Copyright © 2018 Thành Đỗ Long. All rights reserved.
//

import Foundation
import MapKit
import RealmSwift

class LocationObject: Object {
    
    @objc dynamic private var identifier: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var type: String = ""
    @objc dynamic var latitude: Double = 0.0
    @objc dynamic var longitude: Double = 0.0
    @objc dynamic var isValid = true
    
    override static func primaryKey() -> String? {
        return "identifier"
    }
}

extension LocationObject {
    convenience init(title: String,
                     type: String,
                     latitude: Double,
                     longitude: Double) {
        self.init()
        self.identifier = title
        self.name = title
        self.type = type
        self.latitude = latitude
        self.longitude = longitude
    }
    
    convenience init(location: Location) {
        self.init()
        
        self.identifier = location.name
        self.name = location.name
        self.type = location.type
        self.latitude = location.latitude
        self.longitude = location.longitude
    }
}

extension LocationObject {
    func getID() -> String {
        return identifier
    }
}
