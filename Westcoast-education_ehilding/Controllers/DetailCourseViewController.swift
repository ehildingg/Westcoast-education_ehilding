//
//  DetailCourseViewController.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import UIKit

class DetailCourseViewController: UIViewController {
    
    @IBOutlet var courseDetailName: UILabel!
    @IBOutlet var courseDetailDescript: UILabel!
    @IBOutlet var courseDetailImage: UIImageView!
    
    var course: Courses?

    override func viewDidLoad() {
        super.viewDidLoad()

        courseDetailName.text = course?.courseName
        courseDetailDescript.text = course?.courseLongDescription
        courseDetailImage.image = UIImage(named: course!.courseImage)
    }

    // MARK: - Navigation
    
    

}
