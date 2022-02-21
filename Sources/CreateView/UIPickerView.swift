//
//  UIPickerView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UIPickerView
public extension UIPickerView {
    
    /**
     Create UIPickerView
     
        backgroundColor: UIColor = .clear
        tintColor: UIColor = .black
        tag: Int = 0
     
     */
    static func create(backgroundColor: UIColor = .clear,
                       tintColor: UIColor = .black,
                       tag: Int = 0) -> UIPickerView {
        let picker = UIPickerView()

        picker.backgroundColor = backgroundColor
        picker.tintColor = tintColor
        picker.tag = tag
        
        return picker
    }
}
