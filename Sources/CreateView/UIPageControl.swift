//
//  UIPageControl.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: Create UIPageControl
extension UIPageControl {
    
    /**
     Create UIPageControl
     */
    static func create(currentPage: Int = 1,
                       numberOfPages: Int,
                       indicatorColor: UIColor = .gray,
                       currentIndicatorColor: UIColor = .black,
                       backgroundColor: UIColor = .clear,
                       hidesForSinglePage: Bool = true,
                       isOpaque: Bool = true,
                       tamic: Bool = true) -> UIPageControl {
        let pageControl = UIPageControl()
        
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = numberOfPages
        pageControl.pageIndicatorTintColor = indicatorColor
        pageControl.currentPageIndicatorTintColor = currentIndicatorColor
        pageControl.backgroundColor = backgroundColor
        pageControl.hidesForSinglePage = hidesForSinglePage
        pageControl.isOpaque = isOpaque
        pageControl.translatesAutoresizingMaskIntoConstraints = tamic
        return pageControl
    }
}
