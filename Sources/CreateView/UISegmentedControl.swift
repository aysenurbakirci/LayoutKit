//
//  UISegmentedControl.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UISegmentedControl
public extension UISegmentedControl {
    
    /**
     Create UISegmentedControl
     */
    static func create(items: [Any]) -> UISegmentedControl {
        let segment = UISegmentedControl()
        segment.selectedSegmentIndex = 0
        return segment
    }
}
