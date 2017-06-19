//
//  DataSevices.swift
//  Union Social
//
//  Created by Ramit sharma on 19/06/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import Firebase
import Foundation
import FirebaseDatabase


let DB_BASE = Database.database().reference()

class DataService  {
    
    static let ds = DataService()
    
    // creating a singleton(a singleton is an instance of a class which is globally accessable thats only 1 instance)
    
    private var _REF_BASE = DB_BASE
    private var _REF_POSTS = DB_BASE.child("Posts")
    private var _REF_USERS = DB_BASE.child("users")
    
    var REF_BASE: DatabaseReference {
        
        return _REF_BASE
    }
    
    var REF_POSTS : DatabaseReference {
        
        return _REF_POSTS
    }
    
    var REF_USERS: DatabaseReference {
        
        return _REF_USERS
    }
    
    
    func createFirebaseDBUser(uid: String, userdata: Dictionary<String, String>) {
        
        REF_USERS.child(uid).updateChildValues(userdata)
        
        
        
    }
    
    
}
