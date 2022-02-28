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
     Create UISlider.
     */
    static func create(currentValue: Float,
                       minValue: Float,
                       maxValue: Float,
                       minValueImage: UIImage? = nil,
                       maxValueImage: UIImage? = nil,
                       minTrackColor: UIColor = .black,
                       maxTrackColor: UIColor = .gray,
                       thumbColor: UIColor = .black,
                       isContinuous: Bool = true,
                       tag: Int = 0) -> UISlider {
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
        slider.tag = tag
        
        return slider
    }
}
