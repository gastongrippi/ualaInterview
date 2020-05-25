//
//  MealsViewSearchBarDelegate.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit

//MARK: UISearchBarDelegate
extension MealsView: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        presenterDelegate?.loadMeals(searchText)
    }
}
