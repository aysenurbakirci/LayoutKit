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
     
        segmentItems: [String]
        selectedIndex: Int = 0
        tintColor: UIColor = .blue
        backgroundColor: UIColor = .clear
        tag: Int = 0
     */
    static func create(segmentItems: [String],
                       selectedIndex: Int = 0,
                       tintColor: UIColor = .blue,
                       backgroundColor: UIColor = .clear,
                       tag: Int = 0) -> UISegmentedControl {
        let segment = UISegmentedControl()
        
        segment.tintColor = tintColor
        segment.tag = tag
        segment.selectedSegmentIndex = selectedIndex
        segment.backgroundColor = backgroundColor
        
        for (index, title) in segmentItems.enumerated() {
            segment.setTitle(title, forSegmentAt: index)
        }
        
        return segment
    }
    
    /**
     Create UISegmentedControl.
     This method is available in iOS 13 and later versions.
     
        segmentItems: [String]
        selectedIndex: Int = 0
        selectedSegmentColor: UIColor = .blue,
        tintColor: UIColor = .blue
        backgroundColor: UIColor = .clear
        tag: Int = 0
     */
    @available(iOS 13.0, *)
    static func create(segmentItems: [String],
                       selectedIndex: Int = 0,
                       selectedSegmentColor: UIColor = .blue,
                       tintColor: UIColor = .blue,
                       backgroundColor: UIColor = .clear,
                       tag: Int = 0) -> UISegmentedControl {
        let segment = UISegmentedControl()
        
        segment.tintColor = tintColor
        segment.selectedSegmentTintColor = selectedSegmentColor
        segment.tag = tag
        segment.selectedSegmentIndex = selectedIndex
        segment.backgroundColor = backgroundColor
        
        for (index, title) in segmentItems.enumerated() {
            segment.setTitle(title, forSegmentAt: index)
        }
        
        return segment
    }
}
