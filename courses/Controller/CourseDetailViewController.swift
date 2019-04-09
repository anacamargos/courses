//
//  CourseDetailViewController.swift
//  courses
//
//  Created by Ana Leticia Camargos on 09/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {
    
    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var featuredImageView: UIImageView!
    
    var currentCourse: Course!

    override func viewDidLoad() {
        super.viewDidLoad()

        courseTitleLabel.text = currentCourse.title
        descriptionTextView.text = currentCourse.description
        joinCourseButton.setTitle("Join \(currentCourse.instructor)", for: .normal)
        featuredImageView.image = currentCourse.featuredImage
    }
    
}
