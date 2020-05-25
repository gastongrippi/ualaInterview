//
//  UIViewControllerUtils.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit

extension UIViewController {
    func getNavigationBarHeight() -> CGFloat {
        if let navigationHeight = navigationController?.navigationBar.frame.height {
            return navigationHeight + UIApplication.shared.statusBarFrame.height
        } else {
            return UIApplication.shared.statusBarFrame.height
        }
    }
}
