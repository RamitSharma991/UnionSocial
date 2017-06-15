//
//  FeedVC.swift
//  Union Social
//
//  Created by Ramit sharma on 13/06/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper
import Firebase

class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func signInTapped(_ sender: Any) {
        
        let keychainResult = KeychainWrapper.standard.removeObject(forKey: KEY_UID)
        print("Toby: ID removed from keychain \(keychainResult)")

        
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }
}
