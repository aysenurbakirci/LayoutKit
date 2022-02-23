//
//  File.swift
//  
//
//  Created by Ayşe Nur Bakırcı on 23.02.2022.
//

import Foundation
import UIKit

// MARK: - Create UILabel
public extension UILabelView {
    
    /**
     Create UILabelView.
     
        lblText: String = ""
        font: UIFont? = nil
        backgroundColor: UIColor = .clear
        textColor: UIColor = .black
        numberOfLines: Int = 0
        textAlignment: NSTextAlignment = .left
        padding: Double = 0.0
        lineBreakMode: NSLineBreakMode? = nil
        isUserInteractionEnabled: Bool = false
        sizeToFit: Bool = true
        tag: Int = 0
     
     */
    static func create(lblText: String = "",
                       font: UIFont? = nil,
                       backgroundColor: UIColor = .clear,
                       textColor: UIColor = .black,
                       numberOfLines: Int = 0,
                       textAlignment: NSTextAlignment = .left,
                       padding: Double = 0.0,
                       lineBreakMode: NSLineBreakMode? = nil,
                       isUserInteractionEnabled: Bool = false,
                       sizeToFit: Bool = true,
                       tag: Int = 0) -> UILabelView {
        let label = UILabelView()
        
        label.text = lblText
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.isUserInteractionEnabled = isUserInteractionEnabled
        label.tag = tag
        
        label.paddingLeft = padding
        label.paddingRight = padding
        label.paddingTop = padding
        label.paddingBottom = padding
        
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
     
        attributedText: NSAttributedString
        font: UIFont? = nil
        backgroundColor: UIColor = .clear
        textColor: UIColor = .black
        numberOfLines: Int = 0
        textAlignment: NSTextAlignment = .left
        padding: Double = 0.0
        tag: Int = 0,
        isUserInteractionEnabled: Bool = false
        sizeToFit: Bool = true
     
     */
    static func create(attributedText: NSAttributedString,
                       font: UIFont? = nil,
                       backgroundColor: UIColor = .clear,
                       textColor: UIColor = .black,
                       numberOfLines: Int = 0,
                       textAlignment: NSTextAlignment = .left,
                       padding: Double = 0.0,
                       tag: Int = 0,
                       isUserInteractionEnabled: Bool = false,
                       sizeToFit: Bool = true) -> UILabelView {
        let label = UILabelView()
        
        label.attributedText = attributedText
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.backgroundColor = backgroundColor
        label.textColor = textColor
        label.isUserInteractionEnabled = isUserInteractionEnabled
        label.tag = tag
        
        label.paddingLeft = padding
        label.paddingRight = padding
        label.paddingTop = padding
        label.paddingBottom = padding
        
        if sizeToFit {
            label.sizeToFit()
        }
        
        return label
    }
}
