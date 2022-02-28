//
//  UISwitch.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UISwitch
public extension UISwitch {
    
    /**
     Create UISwitch.
     */
    static func create(thumbColor: UIColor = .white,
                       onTintColor: UIColor = .green,
                       tintColor: UIColor = .lightGray,
                       isOn: Bool = false,
                       tag: Int = 0) -> UISwitch {
        let switchControl = UISwitch()
        
        switchControl.thumbTintColor = thumbColor
        switchControl.onTintColor = onTintColor
        switchControl.tintColor = tintColor
        switchControl.isOn = isOn
        switchControl.tag = tag
        
        return switchControl
    }
    
    /**
     Create UISwitch.
     This method is available in iOS 14 and later versions.
     */
    @available(iOS 14.0, *)
    static func create(style: UISwitch.Style = .automatic,
                       title: String? = nil,
                       thumbColor: UIColor = .white,
                       onTintColor: UIColor = .green,
                       tintColor: UIColor = .lightGray,
                       isOn: Bool = false,
                       tag: Int = 0) -> UISwitch {
        let switchControl = UISwitch()
        
        switchControl.preferredStyle = style
        switchControl.title = title
        switchControl.thumbTintColor = thumbColor
        switchControl.onTintColor = onTintColor
        switchControl.tintColor = tintColor
        switchControl.isOn = isOn
        switchControl.tag = tag
        
        return switchControl
    }
}
