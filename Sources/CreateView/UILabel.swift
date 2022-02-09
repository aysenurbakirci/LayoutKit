//
//  UILabel.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

// MARK: Create UILabel
public extension UILabel {
    
    /**
     Create UILabel.
     */
    static func create(text: String = "",
                       accesibilityIdentifier: String? = nil,
                       font: UIFont? = nil,
                       backgroundColor: UIColor = .clear,
                       textColor: UIColor = .black,
                       numberOfLines: Int = 0,
                       attributedText: NSAttributedString? = nil,
                       textAlignment: NSTextAlignment = .left,
                       lineBreakMode: NSLineBreakMode? = nil,
                       isUserInteractionEnabled: Bool = false,
                       tamic: Bool = true) -> UILabel {
        let label = UILabel()
        
        label.text = text
        label.attributedText = attributedText
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.accessibilityIdentifier = accesibilityIdentifier
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.isUserInteractionEnabled = isUserInteractionEnabled
        
        if let lineBreakMode = lineBreakMode {
            label.lineBreakMode = lineBreakMode
        }
        
        label.translatesAutoresizingMaskIntoConstraints = tamic
        
        return label
    }
}
