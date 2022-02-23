//
//  UILabel.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

public class UILabelView: UILabel {
    
    public var textEdgeInsets = UIEdgeInsets.zero {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        let insetRect = bounds.inset(by: textEdgeInsets)
        let textRect = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
        let invertedInsets = UIEdgeInsets(top: -textEdgeInsets.top, left: -textEdgeInsets.left, bottom: -textEdgeInsets.bottom, right: -textEdgeInsets.right)
        return textRect.inset(by: invertedInsets)
    }
    
    public override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textEdgeInsets))
    }
    
    public var paddingLeft: CGFloat {
        set { textEdgeInsets.left = newValue }
        get { return textEdgeInsets.left }
    }
    
    public var paddingRight: CGFloat {
        set { textEdgeInsets.right = newValue }
        get { return textEdgeInsets.right }
    }
    
    public var paddingTop: CGFloat {
        set { textEdgeInsets.top = newValue }
        get { return textEdgeInsets.top }
    }
    
    public var paddingBottom: CGFloat {
        set { textEdgeInsets.bottom = newValue }
        get { return textEdgeInsets.bottom }
    }
}
