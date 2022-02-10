//
//  UIView.swift
//
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

public extension UIView {
    
    /**
     Create UIView
     */
    static func create(backgroundColor: UIColor? = nil,
                       alpha: CGFloat = 1.0,
                       cornerRadius: CGFloat? = nil,
                       borderStyle: (color: UIColor, width: CGFloat)? = nil,
                       isUserInteractionEnabled: Bool = true) -> UIView {

        let view = UIView()
        view.backgroundColor = backgroundColor
        view.alpha = alpha
        view.isUserInteractionEnabled = isUserInteractionEnabled

        if let cornerRadius = cornerRadius {
            view.layer.cornerRadius = cornerRadius
        }

        if let borderStyle = borderStyle {
            view.layer.borderColor = borderStyle.color.cgColor
            view.layer.borderWidth = borderStyle.width
        }
        
        view.layer.masksToBounds = cornerRadius == nil ? true : false || borderStyle == nil ? true : false

        return view
    }
    
    /**
     Create Spacer view
     */
    static func createSpacer(width: CGFloat? = nil,
                             height: CGFloat? = nil,
                             backgroundColor: UIColor? = nil) -> UIView {
        let spacer = UIView()
        if let width = width {
            spacer.widthAnchor
                .constraint(equalToConstant: width)
                .isActive = true
        }
        if let height = height {
            spacer.heightAnchor
                .constraint(equalToConstant: height)
                .isActive = true
        }
        spacer.backgroundColor = backgroundColor
        
        return spacer
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
