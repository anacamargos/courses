//
//  CourseStore.swift
//  courses
//
//  Created by Ana Leticia Camargos on 09/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import UIKit

class CourseStore
{
    class func downloadNewCourses() -> [Course]
    {
        let chefCourse = Course(buttonImage: #imageLiteral(resourceName: "cover_chef"), title: "Become a Pro Chef", instructor: "Gordon Ramsay", featuredImage: #imageLiteral(resourceName: "chef"), introductionVideoURL: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
        
        let popStarCourse = Course(buttonImage: #imageLiteral(resourceName: "cover_pop.png"), title: "Become a Pop Star", instructor: "Taylor Swift", featuredImage: #imageLiteral(resourceName: "pop.jpg"), introductionVideoURL: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
        
        let swiftCourse = Course(buttonImage: #imageLiteral(resourceName: "cover_developer.png"), title: "Become an iOS Developer", instructor: "Duc Tran", featuredImage: #imageLiteral(resourceName: "developer.jpeg"), introductionVideoURL: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
        
        return [chefCourse, popStarCourse, swiftCourse]
    }
}

