//
//  CourseTableViewCell.swift
//  Westcoast-education_ehilding
//
//  Created by Erik Hildingsson on 2022-01-23.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    
    @IBOutlet var courseImage: UIImageView!
    @IBOutlet var courseName: UILabel!
    @IBOutlet var courseDescription: UILabel!
    @IBOutlet weak var favoriteImage: UIButton!
    
    @IBAction func changeFavorite(_ sender: UIButton) {
        
        if(sender.currentImage == UIImage(systemName: "star.fill")){
            sender.setImage(UIImage(systemName: "star"), for: .normal)
        } else {
            sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }
        
    }
}
