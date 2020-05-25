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
    func firstViewController() {
        let vc = MealsView()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func navigateToSecondViewController() {
        // Implementar
//        let vc = ViewController()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: false)
    }
}
