//
//  CoursesTableViewController.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import UIKit

class CoursesTableViewController: UITableViewController {
    
    var categories: Category?
    lazy var dataSource = setupDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initDataLoad()

    }
    
    func initDataLoad() {
        tableView.dataSource = dataSource
        var snapshot = NSDiffableDataSourceSnapshot<Section, Courses>()
        snapshot.appendSections([.all])
        snapshot.appendItems(categories!.courses, toSection: .all)
        dataSource.apply(snapshot, animatingDifferences: false)
    }

    // MARK: - Table view data source
    
    func setupDataSource() -> CoursesDiffableDataSource {
        let cellIdentifier = "customCourseCell"
        
        let dataSource = CoursesDiffableDataSource(tableView: tableView, cellProvider: {
            tableView,
            indexPath,
            course in let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CourseTableViewCell
            
            cell.courseName.text = course.courseName
            cell.courseDescription.text = course.courseShortDescription
            cell.courseImage.image = UIImage(named: course.courseImage)
            
            return cell
        })
        
        return dataSource
    }
    
    // MARK: - Navigation

 
 

}
