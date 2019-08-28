//
//  UITextField+Extension.swift
//  Cenna(v5.5)
//
//  Created by Mikail Osman on 2019-08-23.
//  Copyright © 2019 avicenna. All rights reserved.
//

import UIKit

extension UITextField {
    
    public convenience init(placeHolder: String) {
        
        self.init()
        self.borderStyle = .none
        self.layer.cornerRadius = 7
        self.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        self.textColor = UIColor(white: 0.9, alpha: 0.8)
        self.font = UIFont.systemFont(ofSize: 17)
        self.autocorrectionType = .no
        // placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor(white: 1, alpha: 0.7)]))
        self.attributedPlaceholder = placeholder
        self.setAnchor(width: 0, height: 40)
        self.setLeftPaddingPoints(space: 20)
    }
}
