//
//  UISwitch.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

public extension UISwitch {
    
    /**
     Create UISwitch
     */
    static func create(thumbColor: UIColor = .white,
                       onTintColor: UIColor = .green,
                       tintColor: UIColor = .lightGray,
                       isOn: Bool = false,
                       tamic: Bool = true) -> UISwitch {
        let switchControl = UISwitch()
        
        switchControl.thumbTintColor = thumbColor
        switchControl.onTintColor = onTintColor
        switchControl.tintColor = tintColor
        switchControl.isOn = isOn
        switchControl.translatesAutoresizingMaskIntoConstraints = tamic
        
        return switchControl
    }
    
    @available(iOS 14.0, *)
    static func create(style: UISwitch.Style = .automatic,
                       title: String? = nil,
                       thumbColor: UIColor = .white,
                       onTintColor: UIColor = .green,
                       tintColor: UIColor = .lightGray,
                       isOn: Bool = false,
                       tamic: Bool = true) -> UISwitch {
        let switchControl = UISwitch()
        
        switchControl.preferredStyle = style
        switchControl.title = title
        switchControl.thumbTintColor = thumbColor
        switchControl.onTintColor = onTintColor
        switchControl.tintColor = tintColor
        switchControl.isOn = isOn
        switchControl.translatesAutoresizingMaskIntoConstraints = tamic
        
        return switchControl
    }
}
