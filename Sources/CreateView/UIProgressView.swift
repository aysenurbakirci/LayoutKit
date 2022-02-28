//
//  UIProgressView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UIProgressView
public extension UIProgressView {
    
    /**
     Create UIProgressView.
     */
    static func create(style: UIProgressView.Style,
                       tintColor: UIColor = .black,
                       trackTintColor: UIColor = .gray,
                       currentProgress: Float = 0.0,
                       tag: Int = 0,
                       observedProgress: Progress? = nil,
                       progressImage: UIImage? = nil,
                       trackImage: UIImage? = nil) -> UIProgressView {
        let progress = UIProgressView()
        
        progress.progressViewStyle = style
        progress.progressTintColor = tintColor
        progress.trackTintColor = trackTintColor
        progress.progress = currentProgress
        progress.observedProgress = observedProgress
        progress.progressImage = progressImage
        progress.trackImage = trackImage
        progress.tag = tag
        
        return progress
    }
}
