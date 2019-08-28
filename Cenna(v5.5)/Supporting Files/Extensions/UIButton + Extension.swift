//
//  UIButton + Extension.swift
//  Cenna(v5.5)
//
//  Created by Mikail Osman on 2019-08-23.
//  Copyright © 2019 avicenna. All rights reserved.
//

import UIKit

extension UIButton {
    
    public convenience init(title: String, borderColor: UIColor) {
        self.init()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        self.setAttributedTitle(attributedString, for: .normal)
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 1
        self.layer.borderColor = borderColor.cgColor
        self.setAnchor(width: 0, height: 50)
    }
}
