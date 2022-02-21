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
        tag: Int = 0,
        isSpringLoaded: Bool = false
     
     */
    static func create(buttonItem: SystemItem,
                       target: Any? = nil,
                       tintColor: UIColor = .black,
                       action: Selector? = nil,
                       tag: Int = 0) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(barButtonSystemItem: buttonItem,
                                        target: target,
                                        action: action)
        
        barButton.tintColor = tintColor
        barButton.tag = tag
        
        return barButton
    }
    
    /**
     Create UIBarButtonItem with title.
     
        title: String? = nil
        style: Style,
        image: UIImage? = nil,
        landscapeImage: UIImage? = nil,
        target: Any? = nil,
        tintColor: UIColor = .black,
        action: Selector? = nil,
        tag: Int = 0,
        isSpringLoaded: Bool = false
     
     */

    static func create(title: String? = nil,
                       style: Style,
                       image: UIImage? = nil,
                       landscapeImage: UIImage? = nil,
                       target: Any? = nil,
                       tintColor: UIColor = .black,
                       action: Selector? = nil,
                       tag: Int = 0) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(title: title,
                                        style: style,
                                        target: target,
                                        action: action)
        
        barButton.tintColor = tintColor
        barButton.image = image
        barButton.landscapeImagePhone = landscapeImage
        barButton.tag = tag
        
        return barButton
    }
    
    /**
     Create UIBarButtonItem with system item.
     This method is available in iOS 14 and later versions.
     
        systemItem: SystemItem
        primaryAction: UIAction? = nil
        menu: UIMenu? = nil
        tintColor: UIColor = .black
        tag: Int = 0,
        isSpringLoaded: Bool = false)
     
     */
    @available(iOS 14.0, *)
    static func create(systemItem: SystemItem,
                       primaryAction: UIAction? = nil,
                       menu: UIMenu? = nil,
                       tintColor: UIColor = .black,
                       tag: Int = 0) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(systemItem: systemItem,
                                        primaryAction: primaryAction,
                                        menu: menu)
        
        barButton.tintColor = tintColor
        barButton.tag = tag
        
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
        landscapeImage: UIImage? = nil,
        tag: Int = 0,
        isSpringLoaded: Bool = false
     
     */
    @available(iOS 14.0, *)
    static func create(title: String? = nil,
                       image: UIImage? = nil,
                       tintColor: UIColor = .black,
                       primaryAction: UIAction? = nil,
                       menu: UIMenu? = nil,
                       landscapeImage: UIImage? = nil,
                       tag: Int = 0) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(title: title,
                                        image: image,
                                        primaryAction: primaryAction,
                                        menu: menu)
        
        barButton.tintColor = tintColor
        barButton.landscapeImagePhone = landscapeImage
        barButton.tag = tag
        
        return barButton
    }
}
