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
        tamic: Bool = true
     
     */
    static func create(backgroundColor: UIColor = .clear,
                       tintColor: UIColor = .black,
                       tamic: Bool = true) -> UIPickerView {
        let picker = UIPickerView()

        picker.backgroundColor = backgroundColor
        picker.tintColor = tintColor
        picker.translatesAutoresizingMaskIntoConstraints = tamic
        
        return picker
    }
}
