//
//  SignInVC.swift
//  Union Social
//
//  Created by Ramit sharma on 06/06/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

class SignInVC: UIViewController {

    @IBOutlet weak var emailField: FancyText!
    @IBOutlet weak var passcode: FancyText!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //FACEBOOK CODE
    
    
    
    @IBAction func facebookButtonTapped(_ sender: Any) {
        
        let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            
            if error != nil {
                
                print("Noddy: Unable to authenticate with Facebook - \(String(describing: error))")
        
            } else if result?.isCancelled == true {
                
                print("Toby: User cancelled Facebook authentication")
                
            }
            else {
                
                print("Toby: Successfully authenticated with Facebook")
                
                let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                
                self.firebaseAutheticate(credential)
                
            }
        }
    }

    
    //FIREBASE CODE
    
    
    
    
    func firebaseAutheticate(_ credential: AuthCredential)  {
        
        Auth.auth().signIn(with: credential, completion: {(user, error) in
            if error != nil {
                
                print("Toby: Unable to authenticate with Firebase - \(String(describing: error))")
                
            } else {
                
                print("Toby: Succuessfully Autheticated with Firebase")
            }
            
        })
            
    }
    @IBAction func signInTapped(_ sender: Any) {
        
        if let email = emailField.text, let pwd = passcode.text {
            
            Auth.auth().signIn(withEmail: email, password: pwd, completion: {(user, error) in
            
                if error == nil {
                    
                    print ("Toby: Successfull Firebase-Email User Identification")
                } else {
                    
                    Auth.auth().createUser(withEmail: email, password: pwd, completion: {(user, error) in
                        
                        if error != nil {
                            
                            print("Toby: Unable to authenticate with Firebase-Email")
                        }  else {
                            
                            print("Toby: Successfully autheticated with Firebase-Email")
                        }
                    })
                }

        })
        
        
        }
 
    }
}
