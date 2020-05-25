//
//  MainCoordinator.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit

class MainCoordinator: CoordinatorProtocol {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    
    //MARK: CoordinatorProtocol
    func showMealsView() {
        let vc = MealsView()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func navigateToMealDetail(mealName: String?, mealInstructions: String?) {
        let vc = MealDetailView(mealName: mealName, instruction: mealInstructions)
        navigationController.pushViewController(vc, animated: false)
    }
}
