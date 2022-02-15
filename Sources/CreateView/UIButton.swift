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
     Create UIButton.
     
        type: ButtonType = .system
        title: String = ""
        image: UIImage? = nil
        titleColor: UIColor = .black
        font: UIFont? = nil
        numberOfLines: Int = 0
        backgroundColor: UIColor = .clear
        backgroundImage: UIImage? = nil
        tamic: Bool = true
        sizeToFit: Bool = true
        horizontalAlignment: UIControl.ContentHorizontalAlignment = .center
        verticalAlignment: UIControl.ContentVerticalAlignment = .center
     
     */
    static func create(type: ButtonType = .system,
                       title: String = "",
                       image: UIImage? = nil,
                       titleColor: UIColor = .black,
                       font: UIFont? = nil,
                       numberOfLines: Int = 0,
                       backgroundColor: UIColor = .clear,
                       backgroundImage: UIImage? = nil,
                       tamic: Bool = true,
                       sizeToFit: Bool = true,
                       horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                       verticalAlignment: UIControl.ContentVerticalAlignment = .center) -> UIButton {
        let button = UIButton(type: type)
        
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.numberOfLines = numberOfLines
        button.titleLabel?.font = font
        button.backgroundColor = backgroundColor
        button.setBackgroundImage(backgroundImage, for: .normal)
        button.contentHorizontalAlignment = horizontalAlignment
        button.contentVerticalAlignment = verticalAlignment
        button.translatesAutoresizingMaskIntoConstraints = tamic
        
        if sizeToFit {
            button.sizeToFit()
        }
        
        return button
    }
    
    //MARK: ADD MENU THE BUTTON
}
