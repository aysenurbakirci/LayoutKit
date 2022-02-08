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
     */
    static func create(buttonItem: SystemItem = .add,
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
     Create UIBarButtonItem with image.
     */
    static func create(image: UIImage? = nil,
                       style: Style = .done,
                       target: Any? = nil,
                       tintColor: UIColor = .black,
                       action: Selector? = nil) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(image: image,
                                        style: style,
                                        target: target,
                                        action: action)
        barButton.tintColor = tintColor
        return barButton
    }
    
    /**
     Create UIBarButtonItem with title.
     */
    static func create(title: String? = nil,
                       style: Style = .done,
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
     */
    static func create(image: UIImage? = nil,
                       landscapeImagePhone: UIImage? = nil,
                       style: Style = .done,
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
     */
    @available(iOS 14.0, *)
    static func create(systemItem: SystemItem = .add,
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
