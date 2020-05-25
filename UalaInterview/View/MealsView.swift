//
//  MealsView.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit
import SnapKit

class MealsView: UIViewController {
    
    //MARK: Properties
    var mealsSearchBar = UISearchBar(frame: .zero)
    var mealsTableView = UITableView(frame: .zero)
    weak var coordinator: MainCoordinator?
    var presenterDelegate: MealsPresenterDelegateProtocol?
    
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = k.ScrenTitles.MealsListTitle
        setDelegates()
        addMealsConstraintsView()
    }
    
    //MARK: Private Methods
    private func setDelegates() {
        mealsSearchBar.delegate = self
        mealsTableView.delegate = self
        mealsTableView.dataSource = self
        presenterDelegate = MealsPresenter(delegate: self)
    }
    
    private func addMealsConstraintsView() {
        view.addSubview(mealsSearchBar)
        mealsSearchBar.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp_top).offset(getNavigationBarHeight())
            make.left.equalTo(view.snp_left)
            make.right.equalTo(view.snp_right)
            make.height.equalTo(k.Constraints.searchBarHeight)
        }
        
        view.addSubview(mealsTableView)
        mealsTableView.snp.makeConstraints { (make) in
            make.top.equalTo(mealsSearchBar.snp_bottom)
            make.left.equalTo(view.snp_left)
            make.right.equalTo(view.snp_right)
            make.bottom.equalTo(view.snp_bottom)
        }
    }

}

//Mark: MealsViewDelegateProtocol
extension MealsView : MealsViewDelegateProtocol {
    func reloadMealsTableView() {
        mealsTableView.reloadData()
    }
}

