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
    var scrollView = UIScrollView(frame: .zero)
    
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
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.snp_edges)
        }
        
        scrollView.addSubview(mealName)
        mealName.snp.makeConstraints { (make) in
            make.top.equalTo(scrollView.snp_top).offset(k.Constraints.generalPadding)
            make.left.equalTo(scrollView.snp_left).offset(k.Constraints.generalPadding)
            make.right.equalTo(scrollView.snp_right).offset(k.Constraints.generalPadding)
            make.centerX.equalTo(scrollView.snp_centerX)
        }
        
        scrollView.addSubview(instructions)
        instructions.snp.makeConstraints { (make) in
            make.top.equalTo(mealName.snp_bottom).offset(k.Constraints.generalPadding)
            make.left.equalTo(scrollView.snp_left).offset(k.Constraints.generalPadding)
            make.right.equalTo(scrollView.snp_right).offset(k.Constraints.generalPadding)
            make.centerX.equalTo(scrollView.snp_centerX)
            make.bottom.greaterThanOrEqualTo(scrollView.snp_bottom).offset(-k.Constraints.generalPadding)
        }
    }
}
