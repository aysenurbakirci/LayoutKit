//
//  UICollectionViewCompositionalLayout.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

@available(iOS 13.0, *)
public extension UICollectionViewCompositionalLayout {
    
    /**
     Create UICollectionViewCompositionalLayout
     */
    static func create() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(44))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}

