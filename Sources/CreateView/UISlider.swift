//
//  UISlider.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UISlider
public extension UISlider {
    
    /**
     Create UISlider
     */
    static func create(currentValue: Float = 5.5,
                       minValue: Float = 1.0,
                       maxValue: Float = 10.0,
                       minValueImage: UIImage? = nil,
                       maxValueImage: UIImage? = nil,
                       minTrackColor: UIColor = .black,
                       maxTrackColor: UIColor = .gray,
                       thumbColor: UIColor = .black,
                       isContinuous: Bool = true,
                       tamic: Bool = true) -> UISlider {
        let slider = UISlider()
        
        slider.value = currentValue
        slider.minimumValue = minValue
        slider.maximumValue = maxValue
        slider.minimumValueImage = minValueImage
        slider.maximumValueImage = maxValueImage
        slider.minimumTrackTintColor = minTrackColor
        slider.maximumTrackTintColor = maxTrackColor
        slider.thumbTintColor = thumbColor
        slider.isContinuous = isContinuous
        slider.translatesAutoresizingMaskIntoConstraints = tamic
        
        return slider
    }
}
