//
//  UIActivityIndicatorView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UIActivityIndicatorView
public extension UIActivityIndicatorView {
    
    /**
     Create UIActivityIndicatorView
     
        hidesWhenStopped: Bool = true
        color: UIColor = .gray
        backgroundColor: UIColor = .clear
        alpha: Double = 1.0,
        contentMode: UIView.ContentMode = .scaleAspectFill,
        semantic: UISemanticContentAttribute = .unspecified,
        tag: Int = 0,
        isOpaque: Bool = false,
        tamic: Bool = true
     
     */
    static func create(hidesWhenStopped: Bool = true,
                       color: UIColor = .gray,
                       backgroundColor: UIColor = .clear,
                       alpha: Double = 1.0,
                       contentMode: UIView.ContentMode = .scaleAspectFill,
                       semantic: UISemanticContentAttribute = .unspecified,
                       tag: Int = 0,
                       isOpaque: Bool = false,
                       tamic: Bool = true) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        
        indicator.hidesWhenStopped = hidesWhenStopped
        indicator.backgroundColor = backgroundColor
        indicator.color = color
        indicator.contentMode = contentMode
        indicator.semanticContentAttribute = semantic
        indicator.tag = tag
        indicator.alpha = alpha
        indicator.isOpaque = isOpaque
        indicator.translatesAutoresizingMaskIntoConstraints = tamic
        
        return indicator
    }
    
    /**
     Create UIActivityIndicatorView.
     This method is available in iOS 13 and later versions.
     
        style: UIActivityIndicatorView.Style,
        hidesWhenStopped: Bool = true
        color: UIColor = .gray
        backgroundColor: UIColor = .clear
        alpha: Double = 1.0,
        contentMode: UIView.ContentMode = .scaleAspectFill,
        tag: Int = 0,
        isOpaque: Bool = false,
        tamic: Bool = true
     
     */
    @available(iOS 13.0, *)
    static func create(style: UIActivityIndicatorView.Style,
                       hidesWhenStopped: Bool = true,
                       color: UIColor = .gray,
                       backgroundColor: UIColor = .clear,
                       alpha: Double = 1.0,
                       contentMode: UIView.ContentMode = .scaleAspectFill,
                       tag: Int = 0,
                       isOpaque: Bool = false,
                       tamic: Bool = true) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        
        indicator.hidesWhenStopped = hidesWhenStopped
        indicator.style = style
        indicator.backgroundColor = backgroundColor
        indicator.color = color
        indicator.contentMode = contentMode
        indicator.tag = tag
        indicator.alpha = alpha
        indicator.isOpaque = isOpaque
        indicator.translatesAutoresizingMaskIntoConstraints = tamic
        
        return indicator
    }
}
