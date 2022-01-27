//
//  CategoryTableViewController.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    var cSharp, java, javaScript, python, html, css, kotlin, swift, objC, ruby, cplus: Courses!
    var categories: [Category] = []
    
    override func viewDidLoad() {
        
        initCourses()
        initCategories()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cellIdentifier = "customCategoryCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CategoryTableViewCell
        
        cell.categoryName.text = categories[indexPath.row].categoryName
        cell.categoryDescription.text = categories[indexPath.row].categoryDescription
        cell.categoryImage.image = UIImage(named: categories[indexPath.row].categoryImage)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToCourses" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! CoursesTableViewController
                
                destinationController.categories = categories[indexPath.row]
            }
        }
    }
    
    // MARK: - Initalizer Functions
    
    func initCourses(){
        
        let dummyShortDescription: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum."
        let dummyLongDescription: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie risus ut eleifend interdum. Nunc vel nulla cursus, luctus nunc elementum, suscipit nisi. Aliquam pharetra lorem eu arcu maximus scelerisque. Nulla scelerisque odio elit, a pulvinar lectus blandit ut."
        
        cSharp = Courses(name: "C#",
                             shortDescript: dummyShortDescription,
                             longDescript: dummyLongDescription,
                             id: 1, image: "c_sharp")

        java = Courses(name: "Java",
                       shortDescript: dummyShortDescription,
                       longDescript: dummyLongDescription,
                           id: 2, image: "java")

        javaScript = Courses(name: "JavaScript",
                             shortDescript: dummyShortDescription,
                             longDescript: dummyLongDescription,
                                 id: 3, image: "javascript")

        python = Courses(name: "Python",
                         shortDescript: dummyShortDescription,
                         longDescript: dummyLongDescription,
                             id: 4, image: "python")

        html = Courses(name: "HTML",
                       shortDescript: dummyShortDescription,
                       longDescript: dummyLongDescription,
                           id: 5, image: "html")

        css = Courses(name: "CSS",
                      shortDescript: dummyShortDescription,
                      longDescript: dummyLongDescription,
                          id: 6, image: "css")

        kotlin = Courses(name: "Kotlin",
                         shortDescript: dummyShortDescription,
                         longDescript: dummyLongDescription,
                             id: 7, image: "kotlin")

        swift = Courses(name: "Swift",
                        shortDescript: dummyShortDescription,
                        longDescript: dummyLongDescription,
                            id: 8, image: "swift")

        objC = Courses(name: "Objective C",
                       shortDescript: dummyShortDescription,
                       longDescript: dummyLongDescription,
                           id: 9, image: "objc")

        ruby = Courses(name: "Ruby on Rails",
                       shortDescript: dummyShortDescription,
                       longDescript: dummyLongDescription,
                           id: 10, image: "ruby")

        cplus = Courses(name: "C++",
                        shortDescript: dummyShortDescription,
                        longDescript: dummyLongDescription,
                            id: 11, image: "c_plus_plus")
    }
    
    func initCategories() {
        
        categories = [
            Category(categoryName: "iOS-Utveckling", categoryDescription: "Lär dig utveckla appar till iPhones och Mac!", categoryID: 1, image: "apple", courses: [
                swift, objC, javaScript
            ]),
            Category(categoryName: "Android-Utveckling", categoryDescription: "Lär dig utveckla appar till Android!", categoryID: 2, image: "android", courses: [
                java, kotlin, javaScript
            ]),
            Category(categoryName: "Webb-Utveckling", categoryDescription: "Lär dig skapa interaktiva hemsidor!", categoryID: 3, image: "web", courses: [
                html, css,javaScript
            ]),
            Category(categoryName: "Cloud-Utveckling", categoryDescription: "Blabla gör det cloud folk gör", categoryID: 4, image: "cloud", courses: [
                java, javaScript, python
            ]),
            Category(categoryName: ".NET-Utveckling", categoryDescription: "Gör windows saker woo", categoryID: 5, image: "dotnet", courses: [
                cSharp, html, css
            ]),
            Category(categoryName: "IT-Säkerhet", categoryDescription: "Blabla och så vidare",  categoryID: 7, image: "security", courses: [
                cSharp, python, java, javaScript
            ]),
            Category(categoryName: "Internet of Things", categoryDescription: "Detta är en beskrivning blabla",  categoryID: 8, image: "iot", courses: [
                cSharp, java
            ]),
            Category(categoryName: "Maskininlärning", categoryDescription: "Gör robotar, sponsrat av skynet",  categoryID: 9, image: "machine", courses: [
                python, javaScript
            ]),
            Category(categoryName: "Backend-Utveckling", categoryDescription: "Detta är en beskrivning blabla",  categoryID: 10, image: "back", courses: [
                cplus, cSharp, java
            ])
        ]
        
    }

}
