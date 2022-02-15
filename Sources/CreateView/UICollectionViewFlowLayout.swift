//
//  UICollectionViewFlowLayout.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UICollectionViewFlowLayout
public extension UICollectionViewFlowLayout {
    
    /**
     Create UICollectionViewFlowLayout
     
        itemSize: CGSize
        headerSize: CGSize = .zero
        footerSize: CGSize = .zero
        scrollDirection: UICollectionView.ScrollDirection
        interItemSpacing: CGFloat = .leastNormalMagnitude
        lineSpacing: CGFloat = .leastNormalMagnitude
        sectionInset: UIEdgeInsets = .zero
     
     */
    static func create(itemSize: CGSize,
                       headerSize: CGSize = .zero,
                       footerSize: CGSize = .zero,
                       scrollDirection: UICollectionView.ScrollDirection,
                       interItemSpacing: CGFloat = .leastNormalMagnitude,
                       lineSpacing: CGFloat = .leastNormalMagnitude,
                       sectionInset: UIEdgeInsets = .zero) -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = scrollDirection
        layout.itemSize = itemSize
        layout.minimumInteritemSpacing = interItemSpacing
        layout.minimumLineSpacing = lineSpacing
        layout.sectionInset = sectionInset
        layout.footerReferenceSize = footerSize
        layout.headerReferenceSize = headerSize
        layout.invalidateLayout()
        
        return layout
    }
    
}
