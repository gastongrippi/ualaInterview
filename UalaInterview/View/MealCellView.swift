//
//  MealCellView.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit
import SnapKit

class MealCellView: UITableViewCell {
    //MARK: properties
    var mealImage = UIImageView(frame: .zero)
    var mealName = UILabel(frame: .zero)
    var mealCategory = UILabel(frame: .zero)
    
    //MARK: Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        initializeMealImage()
        initializeMealName()
        initializeMealCategory()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func updateConstraints() {
        super.updateConstraints()
        applyMealImageConstraints()
        applyMealNameConstraints()
        applyMealCategoryConstraints()
    }
    
    //MARK: Private methods
    private func initializeMealImage() {
        mealImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initializeMealName() {
        mealName.textColor = .black
        mealName.font = UIFont(name:k.Fonts.TrebuchetMS , size: 16)
    }
    
    private func initializeMealCategory() {
        mealCategory.textColor = .blue
        mealCategory.font = UIFont(name:k.Fonts.TrebuchetMS , size: 12)
    }
    
    private func applyMealImageConstraints() {
        contentView.addSubview(mealImage)
        mealImage.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(contentView.snp.top).offset(k.Constraints.cellPadding)
            make.bottom.equalTo(contentView.snp.bottom).offset(-k.Constraints.cellPadding)
            make.left.equalTo(contentView.snp.left).offset(k.Constraints.cellPadding)
            make.height.equalTo(k.Constraints.cellHeight)
            make.width.equalTo(k.Constraints.cellWidth)
        }
    }
    
    private func applyMealNameConstraints() {
        contentView.addSubview(mealName)
        mealName.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(contentView.snp.top).offset(k.Constraints.cellPadding)
            make.left.equalTo(mealImage.snp.right).offset(k.Constraints.cellPadding)
            make.right.equalTo(contentView.snp.right).offset(-k.Constraints.cellPadding)
//          make.bottom.equalTo(contentView.snp.bottom).offset(-k.Constraints.cellPadding)

        }
    }
    
    private func applyMealCategoryConstraints() {
        contentView.addSubview(mealCategory)
        mealCategory.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(mealName.snp.bottom).offset(k.Constraints.cellPadding)
            make.bottom.equalTo(contentView.snp.bottom).offset(-k.Constraints.cellPadding)
            make.right.equalTo(contentView.snp.right).offset(-k.Constraints.cellPadding)
            make.left.equalTo(mealImage.snp.right).offset(k.Constraints.cellPadding)
        }
    }
    
}
