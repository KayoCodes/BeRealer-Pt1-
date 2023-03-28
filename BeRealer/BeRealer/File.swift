//
//  File.swift
//  BeRealer
//
//  Created by keenan ray on 3/27/23.
//

import Foundation
import ParseSwift

struct Post: ParseObject{
    var originalData: Data?
    
    var objectId: String?
    
    var createdAt: Date?
    
    var updatedAt: Date?
    
    var ACL: ParseSwift.ParseACL?
    var caption: String?
      var user: User?
      var imageFile: ParseFile?
    
    
}
