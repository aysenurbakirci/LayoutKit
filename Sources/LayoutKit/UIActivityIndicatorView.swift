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
     */
    static func create(hidesWhenStopped: Bool,
                       style: Style? = nil,
                       color: UIColor = .gray) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        
        indicator.hidesWhenStopped = hidesWhenStopped
        indicator.color = color
        
        if #available(iOS 13.0, *), let style = style {
            indicator.style = style
        }
        
        return indicator
    }
}
