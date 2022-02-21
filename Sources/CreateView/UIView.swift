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
     
        backgroundColor: UIColor? = nil
        alpha: CGFloat = 1.0
        isUserInteractionEnabled: Bool = true
        tag: Int = 0
     
     */
    static func create(backgroundColor: UIColor? = nil,
                       alpha: CGFloat = 1.0,
                       isUserInteractionEnabled: Bool = true,
                       tag: Int = 0) -> UIView {

        let view = UIView()
        
        view.backgroundColor = backgroundColor
        view.alpha = alpha
        view.isUserInteractionEnabled = isUserInteractionEnabled
        view.tag = tag
        
        return view
    }
    
    /**
     Create Spacer view
     
        width: CGFloat? = nil
        height: CGFloat? = nil
        backgroundColor: UIColor? = nil
        tag: Int = 0
     
     */
    static func createSpacer(width: CGFloat? = nil,
                             height: CGFloat? = nil,
                             backgroundColor: UIColor? = nil,
                             tag: Int = 0) -> UIView {
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
        spacer.tag = tag
        
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
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
