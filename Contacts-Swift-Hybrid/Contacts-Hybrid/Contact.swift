//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Kevin Stewart on 8/4/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

//@objcMembers
@objc
class Contact: NSObject {
    var name: String
    var relationship: String?
    
    @objc init(name: String, relationship: String? = nil) {
        self.name = name
        self.relationship = relationship
    }
    
    
}
