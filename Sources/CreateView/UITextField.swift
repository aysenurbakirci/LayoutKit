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
     
        placeholder: String = ""
        textAlignment: NSTextAlignment = .right
        font: UIFont? = nil
        textColor: UIColor = .black
        keyboardType: UIKeyboardType = .default
        borderStyle: UITextField.BorderStyle = .line
        isSecureText: Bool = false
        alpha: Double = 1.0
        tag: Int = 0
     
     */
    static func create(placeholder: String = "",
                       textAlignment: NSTextAlignment = .right,
                       font: UIFont? = nil,
                       textColor: UIColor = .black,
                       backgroundImage: UIImage? = nil,
                       keyboardType: UIKeyboardType = .default,
                       borderStyle: UITextField.BorderStyle = .line,
                       isSecureText: Bool = false,
                       alpha: Double = 1.0,
                       tag: Int = 0) -> UITextField {
        let textField = UITextField()
        
        textField.textAlignment = textAlignment
        textField.font = font
        textField.textColor = textColor
        textField.placeholder = placeholder
        textField.keyboardType = keyboardType
        textField.borderStyle = borderStyle
        textField.isSecureTextEntry = isSecureText
        textField.background = backgroundImage
        textField.alpha = alpha
        textField.tag = tag
        
        return textField
    }
}
