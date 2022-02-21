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
     Create UIImageView
     
        image: UIImage
        highlightedImage: UIImage? = nil,
        contentMode: ContentMode = .scaleAspectFit,
        isUserInteractionEnabled: Bool = false,
        backgroundColor: UIColor? = nil,
        tintColor: UIColor? = nil,
        clipsToBounds: Bool = false,
        isOpaque: Bool = true,
        tamic: Bool = true
     
     */
    static func create(image: UIImage,
                       highlightedImage: UIImage? = nil,
                       contentMode: ContentMode = .scaleAspectFit,
                       isUserInteractionEnabled: Bool = false,
                       backgroundColor: UIColor = .clear,
                       tintColor: UIColor? = nil,
                       isOpaque: Bool = true,
                       tamic: Bool = true,
                       tag: Int = 0) -> UIImageView {
        
        let imageView = UIImageView()
        
        imageView.image = image
        imageView.highlightedImage = highlightedImage
        imageView.contentMode = contentMode
        imageView.isUserInteractionEnabled = isUserInteractionEnabled
        imageView.backgroundColor = backgroundColor
        imageView.tintColor = tintColor
        imageView.isOpaque = isOpaque
        imageView.translatesAutoresizingMaskIntoConstraints = tamic
        imageView.tag = tag
        
        return imageView
    }
}
