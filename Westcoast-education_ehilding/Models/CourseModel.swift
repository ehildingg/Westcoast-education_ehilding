//
//  CourseModel.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import Foundation

struct Courses: Hashable {
    var courseName: String
    var courseShortDescription: String
    var courseLongDescription: String
    var courseID: Int
    var courseImage: String
    
    init(name: String, shortDescript: String, longDescript: String, id: Int, image: String) {
        
        self.courseName = name
        self.courseShortDescription = shortDescript
        self.courseLongDescription = longDescript
        self.courseID = id
        self.courseImage = image
    }
}
