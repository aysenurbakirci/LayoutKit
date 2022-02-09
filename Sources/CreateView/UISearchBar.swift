//
//  UISearchBar.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: Create UISearchBar
public extension UISearchBar {
    
    /**
     Create UISearchBar
     */
    static func create(delegate: UISearchBarDelegate,
                       style: UISearchBar.Style = .default,
                       isTranslucent: Bool = false,
                       placeholder: String = "Search",
                       prompt: String? = nil,
                       tintColor: UIColor = .black,
                       barTintColor: UIColor = .clear,
                       backgroundColor: UIColor = .white,
                       backgroundImage: UIImage? = nil,
                       autocorrectionType: UITextAutocorrectionType = .no,
                       enablesReturnKeyAutomatically: Bool = true,
                       returnKeyType: UIReturnKeyType = .default,
                       tamic: Bool = true) -> UISearchBar {
        let searchBar = UISearchBar()
        
        searchBar.delegate = delegate
        searchBar.searchBarStyle = style
        searchBar.isTranslucent = isTranslucent
        searchBar.placeholder = placeholder
        searchBar.prompt = prompt
        searchBar.tintColor = tintColor
        searchBar.barTintColor = barTintColor
        searchBar.backgroundColor = backgroundColor
        searchBar.backgroundImage = backgroundImage
        searchBar.autocorrectionType = autocorrectionType
        searchBar.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
        searchBar.returnKeyType = returnKeyType
        searchBar.translatesAutoresizingMaskIntoConstraints = tamic
        
        return searchBar
    }
}
