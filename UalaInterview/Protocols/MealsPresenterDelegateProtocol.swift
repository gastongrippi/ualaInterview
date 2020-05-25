//
//  PresenterDelegateProtocol.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import Foundation

protocol MealsPresenterDelegateProtocol {
    func loadMeals(_ meals:String)
    func mealsQuantity() -> Int
    func mealsCellTitleForRow(_ row: Int) -> String
}