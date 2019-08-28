//
//  SignUpController.swift
//  Cenna(v5.5)
//
//  Created by Mikail Osman on 2019-08-23.
//  Copyright © 2019 avicenna. All rights reserved.
//

import UIKit
import Firebase

class SignUpController: UIViewController {
    
    var signUpView: SignUpView!
    var defaults = UserDefaults.standard
    var ref: DatabaseReference!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        setUpView()
    }
        func setUpView() {
            let signUpView = SignUpView(frame: self.view.frame)
            self.signUpView = signUpView
            self.signUpView.submitAction = submitPressed
            self.signUpView.cancelAction = cancelPressed
            view.addSubview(signUpView)
        }
    
    func submitPressed() {
        guard let email = signUpView.emailTextField.text else { return }
        guard let password = signUpView.passwordTextField.text else { return }
        guard let name = signUpView.nameTextField.text else { return }
        
        let userData: [String: Any] = [
            
            "name": name
        ]
        
       Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
        if let error = error {
        print(error.localizedDescription)
        } else {
            guard let uid = result?.user.uid else { return }
            self.ref.child("user/\(uid)").setValue(userData)
            self.defaults.set(false, forKey: "UserIsLoggedIn")
            print("Successfully created user", uid)
            self.dismiss(animated: true, completion: nil)
        }
        
        }
    }
    
    func cancelPressed() {
        
    dismiss(animated: true, completion: nil)
    }
}

