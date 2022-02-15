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
     */
    static func create(delegate: UITextViewDelegate? = nil,
                       textColor: UIColor = .black,
                       textContainerInset: UIEdgeInsets = .zero,
                       isEditable: Bool = true,
                       font: UIFont? = nil,
                       autocorrectionType: UITextAutocorrectionType = .default) -> UITextView {
        let textView = UITextView()

        if let delegate = delegate {
            textView.delegate = delegate
        }
        
        textView.textContainerInset = textContainerInset
        textView.textColor = textColor
        textView.isEditable = isEditable
        textView.font = font
        textView.autocorrectionType = .default
        
        return textView
    }
}
