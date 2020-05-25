//
//  MealsViewTableViewDelegate.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit
import SDWebImage

//MARK: UITableViewDelegate
extension MealsView: UITableViewDelegate {
    
}

//MARK: UITableViewDataSource
extension MealsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenterDelegate?.mealsQuantity() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MealCellView(style: .default, reuseIdentifier: k.identifiers.MealCell)
        cell.mealName.text = presenterDelegate?.mealsCellTitleForRow(indexPath.row)
        cell.mealCategory.text = presenterDelegate?.mealsCellCategoryForRow(indexPath.row)
    
        let imageURL = presenterDelegate?.mealsCellImageForRow(indexPath.row) ?? ""
        cell.mealImage.sd_setImage(with: URL(string: imageURL), placeholderImage: UIImage(named: k.identifiers.cellPlaceHolder), completed: nil)
        
        // Make sure the constraints have been added to this cell, since it may have just been created from scratch
        cell.needsUpdateConstraints()
        cell.updateConstraintsIfNeeded()
        
        return cell
    }
    
    
}
