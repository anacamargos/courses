//
//  CourseDetailViewController.swift
//  courses
//
//  Created by Ana Leticia Camargos on 09/04/19.
//  Copyright © 2019 Ana Leticia Camargos. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

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
        
        navigationItem.title = currentCourse.instructor
    }
    
    @IBAction func playButtonDidTap () {
        let videoURL = currentCourse!.introductionVideoURL
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true, completion: {
            playerViewController.player!.play()
        })
    }
    
    @IBAction func joinButtonDidTap () {
        let alertController = UIAlertController(title: "Congratulations!", message: "You just enrolled in \(currentCourse.title) successfully!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
