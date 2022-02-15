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
     
        items: [UITabBarItem],
        selectedItem: UITabBarItem,
        tintColor: UIColor? = nil,
        barTintColor: UIColor? = nil,
        unselectedItemTintColor: UIColor? = nil,
        backgroundColor: UIColor? = nil,
        itemSpacing: CGFloat = 0.0,
        isTranslucent: Bool = false,
        tamic: Bool = true
     
     */
    static func create(items: [UITabBarItem],
                       selectedItem: UITabBarItem,
                       tintColor: UIColor? = nil,
                       barTintColor: UIColor? = nil,
                       unselectedItemTintColor: UIColor? = nil,
                       backgroundColor: UIColor? = nil,
                       itemSpacing: CGFloat = 0.0,
                       isTranslucent: Bool = false,
                       tamic: Bool = true) -> UITabBar {
        let tabBar = UITabBar()

        tabBar.items = items
        tabBar.selectedItem = selectedItem
        tabBar.tintColor = tintColor
        tabBar.barTintColor = barTintColor
        tabBar.unselectedItemTintColor = unselectedItemTintColor
        tabBar.backgroundColor = backgroundColor
        tabBar.itemSpacing = itemSpacing
        tabBar.isTranslucent = isTranslucent
        tabBar.translatesAutoresizingMaskIntoConstraints = tamic
        
        return tabBar
    }
}
