//
//  InterestsArticleViewController.swift
//  HW-2.4
//
//  Created by Сергей on 31.10.2021.
//

import UIKit

class InterestsArticleViewController: UIViewController {
    //MARK: Outletc
    @IBOutlet var headLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    //MARK: Properties
    var segueID = ""
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in viewDidLoad segueID is\(segueID)")
        print(user1.interests.swift)
        
        switch segueID {
            
        case "Music":
            headLabel.text = user1.interests.music.head
            bodyLabel.text = user1.interests.music.body
            imageView.image = user1.interests.music.image
            
        case "Tech":
            headLabel.text = user1.interests.tech.head
            bodyLabel.text = user1.interests.tech.body
            imageView.image = user1.interests.tech.image
            
        case "Movies":
            headLabel.text = user1.interests.movies.head
            bodyLabel.text = user1.interests.movies.body
            imageView.image = user1.interests.movies.image
            
        case "Theatre":
            headLabel.text = user1.interests.theatre.head
            bodyLabel.text = user1.interests.theatre.body
            imageView.image = user1.interests.theatre.image
            
        case "Cars":
            headLabel.text = user1.interests.cars.head
            bodyLabel.text = user1.interests.cars.body
            imageView.image = user1.interests.cars.image
            
        case "Design":
            headLabel.text = user1.interests.design.head
            bodyLabel.text = user1.interests.design.body
            imageView.image = user1.interests.design.image
            
        case "Economy":
            headLabel.text = user1.interests.economy.head
            bodyLabel.text = user1.interests.economy.body
            imageView.image = user1.interests.economy.image
            
        case "Swift":
            headLabel.text = user1.interests.swift.head
            bodyLabel.text = user1.interests.swift.body
            imageView.image = user1.interests.swift.image
            
        case "Education":
            headLabel.text = user1.interests.education.head
            bodyLabel.text = user1.interests.education.body
            imageView.image = user1.interests.education.image
        default:
            print("fail")
            break
            
        }
        
    }
    
}
