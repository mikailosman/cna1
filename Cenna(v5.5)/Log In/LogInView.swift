//
//  LogInView.swift
//  Cenna(v5.5)
//
//  Created by Mikail Osman on 2019-08-22.
//  Copyright © 2019 avicenna. All rights reserved.
//

import UIKit


class LogInView: UIView {
    
    var LogInAction: (() -> Void)?
    var SignUpAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    
    
    }
    func setup() {
        let stackView = createStackView(views: [emailTextField,
                                              passwordTextField,
                                              loginButton,
                                              signupButton])
        
        addSubview(backgroundImageView)
        addSubview(stackView)
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        stackView.setAnchor(width: self.frame.width - 60, height: 210)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
     
        
    }
    
    let backgroundImageView: UIImageView = {
        
        let iv = UIImageView()
        iv.image = UIImage(named: "cennahp" )
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField(placeHolder: "Email")
  
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField(placeHolder: "Password")
    
        return tf
    }()
    //
    let loginButton: UIButton = {
        let button = UIButton(title: "Login", borderColor:  UIColor.greenBorderColor)
        button.addTarget(self, action: #selector(handleLogIn), for: .touchUpInside)
        return button

    }()
    
    let signupButton: UIButton = {
        let button = UIButton(title: "Sign Up", borderColor: UIColor.redBorderColor)
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return button
    }()
    

    
    @objc func handleLogIn() {
        
        LogInAction?()
        
        
    }
    
    @objc func handleSignUp() {
        
        SignUpAction?()
        
        
    }
    
    required init (coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



