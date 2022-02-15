//
//  UISearchBar.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UISearchBar
public extension UISearchBar {
    
    /**
     Create UISearchBar
     
        style: UISearchBar.Style
        placeholder: String = "Search"
        isTranslucent: Bool = false
        tintColor: UIColor = .black
        barTintColor: UIColor = .clear
        backgroundColor: UIColor = .white
        prompt: String? = nil
        backgroundImage: UIImage? = nil
        autocorrectionType: UITextAutocorrectionType = .no
        enablesReturnKeyAutomatically: Bool = true
        returnKeyType: UIReturnKeyType = .default
        tamic: Bool = true
     
     */
    static func create(style: UISearchBar.Style,
                       placeholder: String = "Search",
                       isTranslucent: Bool = false,
                       tintColor: UIColor = .black,
                       barTintColor: UIColor = .clear,
                       backgroundColor: UIColor = .white,
                       prompt: String? = nil,
                       backgroundImage: UIImage? = nil,
                       autocorrectionType: UITextAutocorrectionType = .no,
                       enablesReturnKeyAutomatically: Bool = true,
                       returnKeyType: UIReturnKeyType = .default,
                       tamic: Bool = true) -> UISearchBar {
        let searchBar = UISearchBar()

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
