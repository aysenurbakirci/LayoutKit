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
    static func create(source: (UIPickerViewDelegate & UIPickerViewDataSource)? = nil,
                       backgroundColor: UIColor = .clear,
                       tintColor: UIColor = .black,
                       tamic: Bool = true) -> UIPickerView {
        let picker = UIPickerView()
        
        if let source = source {
            picker.delegate = source
            picker.dataSource = source
        }

        picker.backgroundColor = backgroundColor
        picker.tintColor = tintColor
        picker.translatesAutoresizingMaskIntoConstraints = tamic
        
        return picker
    }
}
