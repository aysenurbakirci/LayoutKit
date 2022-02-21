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
        isOpaque: Bool = false,
        horizontalAlignment: UIControl.ContentHorizontalAlignment = .center
        verticalAlignment: UIControl.ContentVerticalAlignment = .center
        target: Any? = nil,
        selector: Selector,
        touchEvent: UIControl.Event
     
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
                       isOpaque: Bool = false,
                       horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                       verticalAlignment: UIControl.ContentVerticalAlignment = .center,
                       target: Any? = nil,
                       selector: Selector,
                       touchEvent: UIControl.Event) -> UIButton {
        
        let button = UIButton(type: type)
        
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.numberOfLines = numberOfLines
        button.titleLabel?.font = font
        button.contentHorizontalAlignment = horizontalAlignment
        button.contentVerticalAlignment = verticalAlignment
        button.backgroundColor = backgroundColor
        button.setBackgroundImage(backgroundImage, for: .normal)
        button.tag = 0
        button.translatesAutoresizingMaskIntoConstraints = tamic
        button.isOpaque = isOpaque
        button.addTarget(target, action: selector, for: touchEvent)
        
        if sizeToFit {
            button.sizeToFit()
        }
        
        return button
    }
    
    /**
     Create UIButton.
     This method is available in iOS 14 and later versions.
     
        type: ButtonType = .system
        title: String = ""
        image: UIImage? = nil
        titleColor: UIColor = .black
        font: UIFont? = nil
        numberOfLines: Int = 0
        backgroundColor: UIColor = .clear
        backgroundImage: UIImage? = nil
        role: Role,
        menu: UIMenu? = nil,
        tamic: Bool = true
        sizeToFit: Bool = true
        isOpaque: Bool = false,
        horizontalAlignment: UIControl.ContentHorizontalAlignment = .center
        verticalAlignment: UIControl.ContentVerticalAlignment = .center
     
     */
    @available(iOS 14.0, *)
    static func create(type: ButtonType = .system,
                       title: String = "",
                       image: UIImage? = nil,
                       titleColor: UIColor = .black,
                       font: UIFont? = nil,
                       numberOfLines: Int = 0,
                       backgroundColor: UIColor = .clear,
                       backgroundImage: UIImage? = nil,
                       role: Role,
                       menu: UIMenu? = nil,
                       tamic: Bool = true,
                       sizeToFit: Bool = true,
                       isOpaque: Bool = false,
                       horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                       verticalAlignment: UIControl.ContentVerticalAlignment = .center) -> UIButton {
        
        let button = UIButton(type: type)
        
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.numberOfLines = numberOfLines
        button.titleLabel?.font = font
        button.contentHorizontalAlignment = horizontalAlignment
        button.contentVerticalAlignment = verticalAlignment
        button.backgroundColor = backgroundColor
        button.setBackgroundImage(backgroundImage, for: .normal)
        button.tag = 0
        button.translatesAutoresizingMaskIntoConstraints = tamic
        button.menu = menu
        button.role = role
        button.isOpaque = isOpaque
        
        if sizeToFit {
            button.sizeToFit()
        }
        
        return button
    }
}
