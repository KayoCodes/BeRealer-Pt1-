//
//  User.swift
//  BeRealer
//
//  Created by keenan ray on 3/27/23.
//

import Foundation
import ParseSwift

struct User:ParseUser{
    var username: String?
    
    var email: String?
    
    var emailVerified: Bool?
    
    var password: String?
    
    var authData: [String : [String : String]?]?
    
    var originalData: Data?
    
    var objectId: String?
    
    var createdAt: Date?
    
    var updatedAt: Date?
    var lastPostedDate: Date?
    
    var ACL: ParseSwift.ParseACL?
    
    
}
