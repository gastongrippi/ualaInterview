//
//  MealsViewTableViewDelegate.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit

//MARK: UITableViewDelegate
extension MealsView: UITableViewDelegate {
    
}

//MARK: UITableViewDataSource
extension MealsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenterDelegate?.mealsQuantity() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(frame: .zero)
        cell.textLabel?.text = presenterDelegate?.mealsCellTitleForRow(indexPath.row)
        return cell
    }
    
    
}
