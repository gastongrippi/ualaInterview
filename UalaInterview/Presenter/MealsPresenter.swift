//
//  MealsPresenter.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import Alamofire
import SwiftyJSON

class MealsPresenter: MealsPresenterDelegateProtocol {
    private var mealsArray = [Meal]()
    
    //MARK: Properties
    var viewDelegate: MealsViewDelegateProtocol?
    
    // MARK: Initialize
    init(delegate: MealsViewDelegateProtocol) {
        viewDelegate = delegate
    }

    // MARK: MealsPresenterDelegateProtocol
    func loadMeals(_ meals: String) {
        let request = "\(k.endpoint)\(meals)"
        mealsArray = []
        weak var weakSelf: MealsPresenter? = self

        AF.request(request,
                          method: .get,
                          parameters: nil,
                          encoding: JSONEncoding(options:.prettyPrinted),
                          headers: nil).validate().responseJSON { (DefaultDataResponse) in
                            
                            switch DefaultDataResponse.result {
                            case .success: break
                                
                            case .failure(let error):
                                print(error)
                                return
                            }
                            
                            let jsonResult = JSON(DefaultDataResponse.data)
                            let jsonMeals = jsonResult["meals"].arrayObject ?? []
                            
                            for meal in jsonMeals {
                                let jsonData = try? JSONSerialization.data(withJSONObject: meal, options: .prettyPrinted)
                                if let meal = try? JSONDecoder().decode(Meal.self, from: jsonData!) {
                                    print(meal)
                                    weakSelf?.mealsArray.append(meal)
                                }
                            }
                            print(weakSelf?.mealsArray)
                            weakSelf?.viewDelegate?.reloadMealsTableView()
                    }
    }
    
    func mealsQuantity() -> Int {
        return mealsArray.count
    }
    
    func mealsCellTitleForRow(_ index: Int) -> String {
        return mealsArray[index].name
    }
    
    func mealsCellCategoryForRow(_ index: Int) -> String {
        return mealsArray[index].category
    }
    
    func mealsCellImageForRow(_ index: Int) -> String {
        return mealsArray[index].imageURL
    }
}
