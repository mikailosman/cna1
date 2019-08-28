//
//  ViewController.swift
//  Cenna(v5.5)
//
//  Created by Mikail Osman on 2019-08-22.
//  Copyright © 2019 avicenna. All rights reserved.
//

import UIKit
import Firebase

class LogInController: UIViewController {

    var loginView: LogInView!
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        
    }

    func setupView() {
        let mainView = LogInView(frame: self.view.frame)
        self.loginView = mainView
        self.loginView.LogInAction = LogInPressed
        self.loginView.SignUpAction = SignUpPressed
        self.view.addSubview(loginView)
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }

    func LogInPressed() {
        guard let email = loginView.emailTextField.text else { return }
        guard let password = loginView.passwordTextField.text else { return }
        Auth.auth().signIn(withEmail: email, password: password) {( user, error) in
        if let error = error {
            print(error.localizedDescription)
        } else {

            print("You are signed in!")
            self.defaults.set(true, forKey: "UserIsLoggedIn")
            
            // show main controller
            
            let viewController = UINavigationController(rootViewController: ViewController())
            self.present(viewController, animated: true, completion: nil)
            
            
        }
        
        }
    }

    func SignUpPressed() {
        let signUpController = SignUpController()
        present(signUpController, animated: true, completion: nil)
    
        
    }

}


