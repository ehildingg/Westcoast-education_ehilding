//
//  CoursesDiffableDataSource.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import UIKit

enum Section {
    case all
}

class CoursesDiffableDataSource: UITableViewDiffableDataSource<Section, Courses> {
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
