//
//  UIStackView+Extension.swift
//  Cenna(v5.5)
//
//  Created by Mikail Osman on 2019-08-23.
//  Copyright © 2019 avicenna. All rights reserved.
//

import UIKit

extension UIView {
    func createStackView(views: [UIView]) -> UIStackView {
        
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
        
        
    }
    
}
