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
     Create UITextView.
     */
    static func create(textColor: UIColor = .black,
                       textContainerInset: UIEdgeInsets = .zero,
                       isEditable: Bool = true,
                       isSelectable: Bool = true,
                       font: UIFont? = nil,
                       autoCorrectionType: UITextAutocorrectionType = .default,
                       tag: Int = 0) -> UITextView {
        let textView = UITextView()
        
        textView.textContainerInset = textContainerInset
        textView.textColor = textColor
        textView.isEditable = isEditable
        textView.isSelectable = isSelectable
        textView.font = font
        textView.autocorrectionType = autoCorrectionType
        textView.tag = tag
        
        return textView
    }
}
