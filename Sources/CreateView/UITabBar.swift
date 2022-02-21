//
//  UITabBar.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UITabBar
public extension UITabBar {
    
    /**
     Create UITabBar
     
        items: [UITabBarItem]
        selectedItem: UITabBarItem
        tintColor: UIColor? = nil
        barTintColor: UIColor? = nil
        unselectedItemTintColor: UIColor? = nil
        backgroundColor: UIColor? = nil
        itemSpacing: CGFloat = 0.0
        isTranslucent: Bool = false
        tag: Int = 0
     
     */
    static func create(items: [UITabBarItem],
                       selectedItem: UITabBarItem,
                       tintColor: UIColor? = nil,
                       barTintColor: UIColor? = nil,
                       alpha: Double = 1.0,
                       unselectedItemTintColor: UIColor? = nil,
                       backgroundColor: UIColor? = nil,
                       itemSpacing: CGFloat = 0.0,
                       isTranslucent: Bool = false,
                       tag: Int = 0) -> UITabBar {
        let tabBar = UITabBar()

        tabBar.items = items
        tabBar.selectedItem = selectedItem
        tabBar.tintColor = tintColor
        tabBar.barTintColor = barTintColor
        tabBar.alpha = alpha
        tabBar.unselectedItemTintColor = unselectedItemTintColor
        tabBar.backgroundColor = backgroundColor
        tabBar.itemSpacing = itemSpacing
        tabBar.isTranslucent = isTranslucent
        tabBar.tag = tag
        
        return tabBar
    }
}
