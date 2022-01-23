//
//  CategoryModel.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import Foundation

struct Category {
    var categoryName: String
    var categoryDescription: String
    var categoryID: Int
    var categoryImage: String
    var courses: [Courses]
    
    
    init(categoryName: String, categoryDescription: String, categoryID: Int, image: String, courses: [Courses]) {
        self.categoryName = categoryName
        self.categoryDescription = categoryDescription
        self.categoryID = categoryID
        self.categoryImage = image
        self.courses = courses
       
    }
}
