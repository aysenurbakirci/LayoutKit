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
                       color: UIColor = .gray) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        
        indicator.hidesWhenStopped = hidesWhenStopped
        indicator.color = color
        
        return indicator
    }
    
    @available(iOS 13.0, *)
    static func create(hidesWhenStopped: Bool,
                       style: Style = .medium,
                       color: UIColor = .gray) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        
        indicator.hidesWhenStopped = hidesWhenStopped
        indicator.color = color
        indicator.style = style
        
        return indicator
    }
}
