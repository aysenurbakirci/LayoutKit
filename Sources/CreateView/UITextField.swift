//
//  UITextField.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UITextField
public extension UITextField {
    
    /**
     Create UITextField
     */
    static func create(delegate: UITextFieldDelegate? = nil,
                       placeholder: String = "",
                       textAlignment: NSTextAlignment = .right,
                       font: UIFont? = nil,
                       textColor: UIColor = .black,
                       keyboardType: UIKeyboardType = .default) -> UITextField {
        let textField = UITextField()
        
        if let delegate = delegate {
            textField.delegate = delegate
        }
        
        textField.textAlignment = textAlignment
        textField.font = font
        textField.textColor = textColor
        textField.placeholder = placeholder
        textField.keyboardType = keyboardType
        
        return textField
    }
}
