//
//  UIImageView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UIImageView
public extension UIImageView {
    
    /**
     Create UIImageView.
     */
    static func create(image: UIImage,
                       frame: CGRect? = nil,
                       highlightedImage: UIImage? = nil,
                       contentMode: ContentMode = .scaleAspectFit,
                       isUserInteractionEnabled: Bool = false,
                       backgroundColor: UIColor = .clear,
                       tintColor: UIColor? = nil,
                       isOpaque: Bool = true,
                       tag: Int = 0) -> UIImageView {
        
        let imageView = UIImageView()
        
        imageView.image = image
        
        if let frame = frame {
            imageView.frame = frame
        }
        
        imageView.highlightedImage = highlightedImage
        imageView.contentMode = contentMode
        imageView.isUserInteractionEnabled = isUserInteractionEnabled
        imageView.backgroundColor = backgroundColor
        imageView.tintColor = tintColor
        imageView.isOpaque = isOpaque
        imageView.tag = tag
        
        return imageView
    }
}
