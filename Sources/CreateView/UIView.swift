//
//  UIView.swift
//
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

// MARK: - Create UIView
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
}

// MARK: - Helper
public extension UIView {

    func addBorder(color: UIColor, width: CGFloat) -> Void {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    
    func addShadow(color: UIColor = .gray, radius: CGFloat, opacity: Float = 1.0) {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = radius
        self.layer.shadowOffset = .zero
    }
    
    func addCornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
