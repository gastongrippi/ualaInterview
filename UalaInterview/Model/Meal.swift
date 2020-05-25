//
//  Meal.swift
//  UalaInterview
//
//  Created by Gaston Daniel Gabriel Grippi on 25/05/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import Foundation

struct Meal: Codable {
    //MARK: Properties
    var ID: String
    var name: String
    var category: String
    var imageURL: String
    
    enum CodingKeys: String, CodingKey {
        case ID = "idMeal"
        case name = "strMeal"
        case category = "strCategory"
        case imageURL = "strMealThumb"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        ID = try values.decode(String.self, forKey: .ID)
        name = try values.decode(String.self, forKey: .name)
        category = try values.decode(String.self, forKey: .category)
        imageURL = try values.decode(String.self, forKey: .imageURL)
    }
}
