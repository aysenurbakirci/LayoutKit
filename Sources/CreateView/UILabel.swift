//
//  UILabel.swift
//  
//
//  Created by Ayşe Nur Bakırcı on 23.02.2022.
//

import Foundation
import UIKit

// MARK: - Create UILabel
public extension UILabel {
    
    /**
     Create UILabelView.
     */
    static func create(lblText: String = "",
                       font: UIFont? = nil,
                       backgroundColor: UIColor = .clear,
                       textColor: UIColor = .black,
                       numberOfLines: Int = 0,
                       textAlignment: NSTextAlignment = .left,
                       lineBreakMode: NSLineBreakMode? = nil,
                       isUserInteractionEnabled: Bool = false,
                       sizeToFit: Bool = true,
                       tag: Int = 0) -> UILabel {
        let label = UILabel()
        
        label.text = lblText
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.isUserInteractionEnabled = isUserInteractionEnabled
        label.tag = tag
        
        if let lineBreakMode = lineBreakMode {
            label.lineBreakMode = lineBreakMode
        }
        
        if sizeToFit {
            label.sizeToFit()
        }
        
        return label
    }

    /**
     Create UILabelView.
     */
    static func create(attributedText: NSAttributedString,
                       font: UIFont? = nil,
                       backgroundColor: UIColor = .clear,
                       textColor: UIColor = .black,
                       numberOfLines: Int = 0,
                       textAlignment: NSTextAlignment = .left,
                       tag: Int = 0,
                       isUserInteractionEnabled: Bool = false,
                       sizeToFit: Bool = true) -> UILabel {
        let label = UILabel()
        
        label.attributedText = attributedText
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.isUserInteractionEnabled = isUserInteractionEnabled
        label.tag = tag
        
        if sizeToFit {
            label.sizeToFit()
        }
        
        return label
    }
}
