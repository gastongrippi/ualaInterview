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
    weak var coordinator: MainCoordinator?
    var presenter: PresenterDelegateProtocol?
    var mealsSearchBar = UISearchBar(frame: .zero)
    var mealsTableView = UITableView(frame: .zero)
    
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
        mealsTableView.delegate = self
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

//MARK: UISearchBarDelegate
extension MealsView: UISearchBarDelegate {
    
}
//MARK: UITableViewDelegate
extension MealsView: UITableViewDelegate {
    
}

//MARK: UITableViewDataSource
extension MealsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(frame: .zero)
        return cell
    }
    
    
}
