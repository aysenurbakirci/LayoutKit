//
//  UIBarButtonItem.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UIBarButtonItem
public extension UIBarButtonItem {
    
    /**
     Create UIBarButtonItem with system button items.
     
        buttonItem: SystemItem
        target: Any? = nil
        tintColor: UIColor = .black
        action: Selector? = nil
     
     */
    static func create(buttonItem: SystemItem,
                       target: Any? = nil,
                       tintColor: UIColor = .black,
                       action: Selector? = nil) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(barButtonSystemItem: buttonItem,
                                        target: target,
                                        action: action)
        barButton.tintColor = tintColor
        return barButton
    }
    
    /**
     Create UIBarButtonItem with title.
     
        style: Style
        title: String? = nil
        target: Any? = nil
        tintColor: UIColor = .black
        action: Selector? = nil
     
     */
    static func create(style: Style,
                       title: String? = nil,
                       target: Any? = nil,
                       tintColor: UIColor = .black,
                       action: Selector? = nil) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(title: title,
                                        style: style,
                                        target: target,
                                        action: action)
        barButton.tintColor = tintColor
        return barButton
    }
    
    /**
     Create UIBarButtonItem with image and landspace image.
     
        style: Style
        image: UIImage? = nil
        landscapeImagePhone: UIImage? = nil
        target: Any? = nil
        tintColor: UIColor = .black
        action: Selector? = nil
     
     */
    static func create(style: Style,
                       image: UIImage? = nil,
                       landscapeImagePhone: UIImage? = nil,
                       target: Any? = nil,
                       tintColor: UIColor = .black,
                       action: Selector? = nil) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(image: image,
                                        landscapeImagePhone: landscapeImagePhone,
                                        style: style,
                                        target: target,
                                        action: action)
        barButton.tintColor = tintColor
        return barButton
    }
    
    /**
     Create UIBarButtonItem with system item.
     This method is available in iOS 14 and later versions.
     
        systemItem: SystemItem
        primaryAction: UIAction? = nil
        menu: UIMenu? = nil
        tintColor: UIColor = .black
     
     */
    @available(iOS 14.0, *)
    static func create(systemItem: SystemItem,
                       primaryAction: UIAction? = nil,
                       menu: UIMenu? = nil,
                       tintColor: UIColor = .black) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(systemItem: systemItem,
                                        primaryAction: primaryAction,
                                        menu: menu)
        barButton.tintColor = tintColor
        return barButton
    }
    
    /**
     Create UIBarButtonItem with title and image.
     This method is available in iOS 14 and later versions.
     
        title: String? = nil
        image: UIImage? = nil
        tintColor: UIColor = .black
        primaryAction: UIAction? = nil
        menu: UIMenu? = nil
     
     */
    @available(iOS 14.0, *)
    static func create(title: String? = nil,
                       image: UIImage? = nil,
                       tintColor: UIColor = .black,
                       primaryAction: UIAction? = nil,
                       menu: UIMenu? = nil) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(title: title,
                                        image: image,
                                        primaryAction: primaryAction,
                                        menu: menu)
        barButton.tintColor = tintColor
        return barButton
    }
}
