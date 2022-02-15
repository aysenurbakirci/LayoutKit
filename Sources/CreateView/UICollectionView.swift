//
//  UICollectionView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UICollectionView
public extension UICollectionView {
    
    /**
     Create UICollectionView
     
        layout: UICollectionViewLayout
        addCells: [UICollectionViewCell.Type]
        header: UICollectionReusableView.Type? = nil
        footer: UICollectionReusableView.Type? = nil
        backgroundColor: UIColor = .clear
        showHorizontalIndicator: Bool = false
        showVerticalIndicator: Bool = false
     
     */
    static func createCollection(layout: UICollectionViewLayout,
                                 addCells: [UICollectionViewCell.Type],
                                 header: UICollectionReusableView.Type? = nil,
                                 footer: UICollectionReusableView.Type? = nil,
                                 backgroundColor: UIColor = .clear,
                                 showHorizontalIndicator: Bool = false,
                                 showVerticalIndicator: Bool = false) -> UICollectionView{
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView.backgroundColor = backgroundColor
        collectionView.showsHorizontalScrollIndicator = showHorizontalIndicator
        collectionView.showsVerticalScrollIndicator = showVerticalIndicator
        
        addCells.forEach { cellType in
            collectionView.register(cellType.self, forCellWithReuseIdentifier: cellType.reuseIdentifier)
        }
        
        if let header = header {
            collectionView.register(header.self,
                                    forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                    withReuseIdentifier: header.reuseIdentifier)
        }
        
        if let footer = footer {
            collectionView.register(footer.self,
                                    forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                    withReuseIdentifier: footer.reuseIdentifier)
        }
        
        return collectionView
    }
}

//MARK: - UICollectionView dequeue cell
extension UICollectionView {
    
    /**
     Dequeue UICollectionViewCell
     */
    func dequeue<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
 }
