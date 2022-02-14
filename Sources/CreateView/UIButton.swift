//
//  UIButton.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

//MARK: - Create UIButton
public extension UIButton {
    
    /**
     Create UIButton -> title and backround color.
     */
    static func create(type: ButtonType = .system,
                       title: String = "",
                       titleColor: UIColor = .black,
                       font: UIFont? = nil,
                       numberOfLines: Int = 0,
                       backgroundColor: UIColor = .clear,
                       tamic: Bool = true,
                       sizeToFit: Bool = true,
                       horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                       verticalAlignment: UIControl.ContentVerticalAlignment = .center) -> UIButton {
        let button = UIButton(type: type)
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.numberOfLines = numberOfLines
        button.titleLabel?.font = font
        button.backgroundColor = backgroundColor
        button.contentHorizontalAlignment = horizontalAlignment
        button.contentVerticalAlignment = verticalAlignment
        button.translatesAutoresizingMaskIntoConstraints = tamic
        
        if sizeToFit {
            button.sizeToFit()
        }
        
        return button
    }
    
    /**
     Create UIButton -> title and backround image.
     */
    static func create(type: ButtonType = .system,
                       title: String = "",
                       titleColor: UIColor = .black,
                       font: UIFont? = nil,
                       numberOfLines: Int = 0,
                       backgroundImage: UIImage? = nil,
                       tamic: Bool = true,
                       sizeToFit: Bool = true,
                       horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                       verticalAlignment: UIControl.ContentVerticalAlignment = .center) -> UIButton {
        let button = UIButton(type: type)
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.setBackgroundImage(backgroundImage, for: .normal)
        button.titleLabel?.numberOfLines = numberOfLines
        button.titleLabel?.font = font
        button.contentHorizontalAlignment = horizontalAlignment
        button.contentVerticalAlignment = verticalAlignment
        button.translatesAutoresizingMaskIntoConstraints = tamic
        
        if sizeToFit {
            button.sizeToFit()
        }
        
        return button
    }
    
    /**
     Create UIButton -> image and backround color.
     */
    static func create(type: ButtonType = .system,
                       font: UIFont? = nil,
                       numberOfLines: Int = 0,
                       image: UIImage? = nil,
                       backgroundImage: UIImage? = nil,
                       backgroundColor: UIColor = .clear,
                       tamic: Bool = true,
                       sizeToFit: Bool = true) -> UIButton {
        let button = UIButton(type: type)
    
        button.setImage(image, for: .normal)
        button.setBackgroundImage(backgroundImage, for: .normal)
        button.titleLabel?.numberOfLines = numberOfLines
        button.titleLabel?.font = font
        button.backgroundColor = backgroundColor
        button.translatesAutoresizingMaskIntoConstraints = tamic
        
        if sizeToFit {
            button.sizeToFit()
        }
        
        return button
    }
}
