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

// Skapar kurser med info för att populera i category
var cSharp = Courses(name: "C#",
                     shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                     longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                     id: 1, image: "c_sharp")

var java = Courses(name: "Java",
                   shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                   longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                   id: 2, image: "java")

var javaScript = Courses(name: "JavaScript",
                         shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                         longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                         id: 3, image: "javascript")

var python = Courses(name: "Python",
                     shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                     longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                     id: 4, image: "python")

var html = Courses(name: "HTML",
                   shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                   longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                   id: 5, image: "html")

var css = Courses(name: "CSS",
                  shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                  longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                  id: 6, image: "css")

var kotlin = Courses(name: "Kotlin",
                     shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                     longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                     id: 7, image: "kotlin")

var swift = Courses(name: "Swift",
                    shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                    longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                    id: 8, image: "swift")

var objC = Courses(name: "Objective C",
                   shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                   longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                   id: 9, image: "objc")

var ruby = Courses(name: "Ruby on Rails",
                   shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                   longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                   id: 10, image: "ruby")

var cplus = Courses(name: "C++",
                    shortDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum.",
                    longDescript: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut. Morbi eget tellus massa. Etiam sed velit sed nisl pretium ornare.",
                    id: 11, image: "c_plus_plus")
