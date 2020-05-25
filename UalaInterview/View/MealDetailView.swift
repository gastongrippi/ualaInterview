//
//  MealDetailView.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit

class MealDetailView: UIViewController {
    //MARK: Properties
    var mealName = UILabel(frame: .zero)
    var instructions = UILabel(frame: .zero)
    
    //MARK: Initializer
    convenience init(mealName: String?, instruction: String?) {
        self.init()
        self.mealName.text = mealName
        self.instructions.text = instruction
    }
    
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = k.ScrenTitles.MealsDetailView
        view.backgroundColor = .lightGray
        customizeMealName()
        customizeInstructions()
        addMealDetailConstraintsView()
    }
    
    //MARK: Private
    private func customizeMealName() {
        mealName.textAlignment = .center
    }
    
    private func customizeInstructions() {
        instructions.numberOfLines = 0
    }
    
    private func addMealDetailConstraintsView() {
        view.addSubview(mealName)
        mealName.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp_top).offset(getNavigationBarHeight())
            make.left.equalTo(view.snp_left)
            make.right.equalTo(view.snp_right)
            make.centerX.equalTo(view.snp_centerX)
            make.height.equalTo(50)
        }
        
        view.addSubview(instructions)
        instructions.snp.makeConstraints { (make) in
            make.top.equalTo(mealName.snp_bottom).offset(10)
            make.left.equalTo(view.snp_left)
            make.right.equalTo(view.snp_right)
            make.centerX.equalTo(view.snp_centerX)
            make.bottom.greaterThanOrEqualTo(view.snp_bottom)
        }
    }
}
