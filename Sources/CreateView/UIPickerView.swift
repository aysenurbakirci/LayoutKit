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
     */
    static func create(source: UIPickerViewDelegate & UIPickerViewDataSource,
                       backgroundColor: UIColor = .clear,
                       tintColor: UIColor = .black,
                       isOpaque: Bool = true,
                       tamic: Bool = true) -> UIPickerView {
        let picker = UIPickerView()
        
        picker.delegate = source
        picker.dataSource = source
        picker.backgroundColor = backgroundColor
        picker.tintColor = tintColor
        picker.isOpaque = isOpaque
        picker.translatesAutoresizingMaskIntoConstraints = tamic
        
        return picker
    }
}
