//
//  UIDatePicker.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

public extension UIDatePicker {
    
    /**
     Create UIDatePicker.
     */
    static func create(mode: UIDatePicker.Mode = .dateAndTime,
                       minuteInterval: Int = 0,
                       locale: Locale = .current,
                       timeZone: TimeZone = .current,
                       date: Date? = nil,
                       maxDate: Date? = nil,
                       minDate: Date? = nil,
                       countDownDuration: TimeInterval? = nil) -> UIDatePicker {
        let picker = UIDatePicker()
        
        picker.datePickerMode = mode
        picker.minuteInterval = minuteInterval
        picker.locale = locale
        picker.timeZone = timeZone
        picker.maximumDate = maxDate
        picker.minimumDate = minDate
        
        if let date = date {
            picker.date = date
        }
        
        if let countDownDuration = countDownDuration {
            picker.countDownDuration = countDownDuration
        }
        
        return picker
    }
}
