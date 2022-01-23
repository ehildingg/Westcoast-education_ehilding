//
//  CategoryTableViewController.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    var categories: [Category] = [
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

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> CategoryTableViewCell {
     
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

}
