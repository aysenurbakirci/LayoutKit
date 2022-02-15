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
        tamic: Bool = true
     
     */
    static func create(hidesWhenStopped: Bool = true,
                       color: UIColor = .gray,
                       backgroundColor: UIColor = .clear,
                       tamic: Bool = true) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        
        indicator.hidesWhenStopped = hidesWhenStopped
        indicator.backgroundColor = .gray
        indicator.color = color
        indicator.translatesAutoresizingMaskIntoConstraints = tamic
        
        return indicator
    }
    
    @available(iOS 13.0, *)
    static func create(hidesWhenStopped: Bool = true,
                       style: UIActivityIndicatorView.Style = .medium,
                       color: UIColor = .gray,
                       backgroundColor: UIColor = .clear,
                       tamic: Bool = true) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView()
        
        indicator.hidesWhenStopped = hidesWhenStopped
        indicator.color = color
        indicator.backgroundColor = .gray
        indicator.style = style
        indicator.translatesAutoresizingMaskIntoConstraints = tamic
        
        return indicator
    }
}
