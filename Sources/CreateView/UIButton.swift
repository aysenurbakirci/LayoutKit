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
     */
    static func create(type: ButtonType = .system,
                       title: String = "",
                       titleColor: UIColor = .black,
                       font: UIFont? = nil,
                       numberOfLines: Int = 0,
                       image: UIImage? = nil,
                       backgroundImage: UIImage? = nil,
                       backgroundColor: UIColor = .clear,
                       tamic: Bool = true,
                       horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                       verticalAlignment: UIControl.ContentVerticalAlignment = .center) -> UIButton {
        let button = UIButton(type: type)
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.setImage(image, for: .normal)
        button.setBackgroundImage(backgroundImage, for: .normal)
        button.titleLabel?.numberOfLines = numberOfLines
        button.titleLabel?.font = font
        button.backgroundColor = backgroundColor
        button.contentHorizontalAlignment = horizontalAlignment
        button.contentVerticalAlignment = verticalAlignment
        button.translatesAutoresizingMaskIntoConstraints = tamic
        
        return button
    }
}
