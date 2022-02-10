//
//  UITabBarItem.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: Create UITabBarItem
public extension UITabBarItem {
    
    /**
     Create UITabBarItem
     */
    static func create(systemItem: UITabBarItem.SystemItem,
                       tag: Int,
                       badgeColor: UIColor = .black,
                       badgeValue: String? = nil) -> UITabBarItem {
        let tabBarItem = UITabBarItem(tabBarSystemItem: systemItem,
                                      tag: tag)
        tabBarItem.badgeColor = badgeColor
        tabBarItem.badgeValue = badgeValue
        
        return tabBarItem
    }
    
    static func create(title: String,
                       image: UIImage,
                       tag: Int,
                       badgeColor: UIColor = .black,
                       badgeValue: String? = nil) -> UITabBarItem {
        let tabBarItem = UITabBarItem(title: title,
                                      image: image,
                                      tag: tag)
        tabBarItem.badgeColor = badgeColor
        tabBarItem.badgeValue = badgeValue
        
        return tabBarItem
    }
    
    static func create(title: String,
                       image: UIImage,
                       selectedImage: UIImage,
                       tag: Int,
                       badgeColor: UIColor = .black,
                       badgeValue: String? = nil) -> UITabBarItem {
        let tabBarItem = UITabBarItem(title: title,
                                      image: image,
                                      selectedImage: selectedImage)
        tabBarItem.tag = tag
        tabBarItem.badgeColor = badgeColor
        tabBarItem.badgeValue = badgeValue
        
        return tabBarItem
    }
}
