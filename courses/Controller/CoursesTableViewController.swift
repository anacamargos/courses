//
//  CoursesTableViewController.swift
//  courses
//
//  Created by Ana Leticia Camargos on 09/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import UIKit

class CoursesTableViewController: UITableViewController {
    
    var courses = CourseStore.downloadNewCourses()
    var selectedCourse: Course!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as! CourseTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.courseImageView.image = UIImage(named: "cover_chef")
        case 1:
            cell.courseImageView.image = UIImage(named: "cover_pop")
        case 2:
            cell.courseImageView.image = UIImage(named: "cover_developer")
        default:
            cell.courseImageView.image = UIImage(named: "cover_developer")
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            selectedCourse = courses[0]
        case 1:
            selectedCourse = courses[1]
        case 2:
            selectedCourse = courses[2]
        default:
            print("ta no default")
        }
        performSegue(withIdentifier: "showDetails", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let courseDetailVC = segue.destination as! CourseDetailViewController
            courseDetailVC.currentCourse = selectedCourse
        }
    }
}
