//
//  UILabel.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

// MARK: - Create UILabel
public extension UILabel {
    
    /**
     Create UILabel.
     
        lblText: String = ""
        font: UIFont? = nil
        backgroundColor: UIColor = .clear
        textColor: UIColor = .black
        numberOfLines: Int = 0
        textAlignment: NSTextAlignment = .left
        lineBreakMode: NSLineBreakMode? = nil
        isUserInteractionEnabled: Bool = false
        sizeToFit: Bool = true
        tamic: Bool = true
     
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
                       tamic: Bool = true) -> UILabel {
        let label = UILabel()
        
        label.text = lblText
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.isUserInteractionEnabled = isUserInteractionEnabled
        
        if let lineBreakMode = lineBreakMode {
            label.lineBreakMode = lineBreakMode
        }
        
        if sizeToFit {
            label.sizeToFit()
        }
        
        label.translatesAutoresizingMaskIntoConstraints = tamic
        
        return label
    }

    /**
     Create UILabel.
     
        attributedText: NSAttributedString
        font: UIFont? = nil
        backgroundColor: UIColor = .clear
        textColor: UIColor = .black
        numberOfLines: Int = 0
        textAlignment: NSTextAlignment = .left
        isUserInteractionEnabled: Bool = false
        sizeToFit: Bool = true
        tamic: Bool = true
     
     */
    static func create(attributedText: NSAttributedString,
                       font: UIFont? = nil,
                       backgroundColor: UIColor = .clear,
                       textColor: UIColor = .black,
                       numberOfLines: Int = 0,
                       textAlignment: NSTextAlignment = .left,
                       isUserInteractionEnabled: Bool = false,
                       sizeToFit: Bool = true,
                       tamic: Bool = true) -> UILabel {
        let label = UILabel()
        
        label.attributedText = attributedText
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.isUserInteractionEnabled = isUserInteractionEnabled
        
        if sizeToFit {
            label.sizeToFit()
        }
        
        label.translatesAutoresizingMaskIntoConstraints = tamic
        
        return label
    }
}
