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
        
        if sizeToFit {
            label.sizeToFit()
        }
        
        return label
    }
    
    func addTextPadding(top: Double = 0.0, left: Double = 0.0, bottom: Double = 0.0, right: Double = 0.0) {
        self.paddingLeft = left
        self.paddingRight = right
        self.paddingTop = top
        self.paddingBottom = bottom
    }
}
