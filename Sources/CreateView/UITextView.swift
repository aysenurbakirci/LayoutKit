//
//  UITextView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UITextView
public extension UITextView {
    
    /**
     Create UITextView
     
     textColor: UIColor = .black
     textContainerInset: UIEdgeInsets = .zero
     isEditable: Bool = true
     font: UIFont? = nil
     autocorrectionType: UITextAutocorrectionType = .default
     
     */
    static func create(textColor: UIColor = .black,
                       textContainerInset: UIEdgeInsets = .zero,
                       isEditable: Bool = true,
                       font: UIFont? = nil,
                       autocorrectionType: UITextAutocorrectionType = .default) -> UITextView {
        let textView = UITextView()
        
        textView.textContainerInset = textContainerInset
        textView.textColor = textColor
        textView.isEditable = isEditable
        textView.font = font
        textView.autocorrectionType = .default
        
        return textView
    }
}
