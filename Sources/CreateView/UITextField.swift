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
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: .init(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: .init(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    func setBottomLine(color: UIColor = .black) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.height - 1, width: self.frame.width, height: 1.0)
        bottomLine.backgroundColor = color.cgColor
        self.borderStyle = .none
        self.layer.addSublayer(bottomLine)
    }
}
