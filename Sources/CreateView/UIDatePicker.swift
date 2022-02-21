//
//  UIDatePicker.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

//MARK: - Create UIDatePicker
public extension UIDatePicker {
    
    /**
     Create UIDatePicker.
     
        mode: UIDatePicker.Mode
        minuteInterval: Int? = nil
        tintColor: UIColor = .black
        backgroundColor: UIColor = .clear
        locale: Locale = .current
        timeZone: TimeZone = .current
        maxDate: Date = .distantFuture
        minDate: Date = .distantPast
        date: Date? = nil
        countDownDuration: TimeInterval? = nil
        tamic: Bool = true
     */
    static func create(mode: UIDatePicker.Mode,
                       minuteInterval: Int = 1,
                       tintColor: UIColor = .black,
                       backgroundColor: UIColor = .clear,
                       locale: Locale = .current,
                       timeZone: TimeZone = .current,
                       maxDate: Date = .distantFuture,
                       minDate: Date = .distantPast,
                       date: Date? = nil,
                       tag: Int = 0,
                       tamic: Bool = true) -> UIDatePicker {
        let picker = UIDatePicker()
        
        picker.datePickerMode = mode
        picker.locale = locale
        picker.timeZone = timeZone
        picker.maximumDate = maxDate
        picker.minimumDate = minDate
        picker.tintColor = tintColor
        picker.backgroundColor = backgroundColor
        picker.minuteInterval = minuteInterval
        picker.tag = tag
        
        if let date = date {
            picker.date = date
        } else {
            let date = Date()
            picker.date = date
        }
        
        picker.translatesAutoresizingMaskIntoConstraints = tamic
        
        return picker
    }
}
