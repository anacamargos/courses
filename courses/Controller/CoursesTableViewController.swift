//
//  CoursesTableViewController.swift
//  courses
//
//  Created by Ana Leticia Camargos on 09/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import UIKit

class CoursesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

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
}
