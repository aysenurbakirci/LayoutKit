//
//  UIPageControl.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UIPageControl
public extension UIPageControl {
    
    /**
     Create UIPageControl.
     
        currentPage: Int
        numberOfPages: Int
        indicatorColor: UIColor = .gray
        currentIndicatorColor: UIColor = .black
        backgroundColor: UIColor = .clear
        hidesForSinglePage: Bool = true
        tag: Int = 0,
        horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
        verticalAlignment: UIControl.ContentVerticalAlignment = .center
     
     */
    static func create(currentPage: Int,
                       numberOfPages: Int,
                       indicatorColor: UIColor = .gray,
                       currentIndicatorColor: UIColor = .black,
                       backgroundColor: UIColor = .clear,
                       hidesForSinglePage: Bool = true,
                       tag: Int = 0,
                       horizontalAlignment: UIControl.ContentHorizontalAlignment = .center,
                       verticalAlignment: UIControl.ContentVerticalAlignment = .center) -> UIPageControl {
        let pageControl = UIPageControl()
        
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = numberOfPages
        pageControl.pageIndicatorTintColor = indicatorColor
        pageControl.currentPageIndicatorTintColor = currentIndicatorColor
        pageControl.backgroundColor = backgroundColor
        pageControl.hidesForSinglePage = hidesForSinglePage
        pageControl.contentHorizontalAlignment = horizontalAlignment
        pageControl.contentVerticalAlignment = verticalAlignment
        pageControl.tag = tag
        
        return pageControl
    }
}
