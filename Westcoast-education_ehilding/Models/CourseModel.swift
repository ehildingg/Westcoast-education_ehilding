//
//  CourseModel.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import Foundation

struct Courses: Hashable {
    var courseName: String
    var courseDescription: String
    var courseID: Int
    var courseImage: String
    
    init(name: String, description: String, id: Int, image: String) {
        
        self.courseName = name
        self.courseDescription = description
        self.courseID = id
        self.courseImage = image
    }
}
