//
//  ProfileViewController.swift
//  HW-2.4
//
//  Created by Сергей on 30.10.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var labelToDisplayLogin: UILabel!
    @IBOutlet var firstNameOutlet: UILabel!
    @IBOutlet var secondNameOutlet: UILabel!
    @IBOutlet var ageOutlet: UILabel!
    @IBOutlet var degreeOutlet: UILabel!

    //MARK: Displaying Info
    override func viewDidLoad() {
        firstNameOutlet.text = user1.profile.firstName
        secondNameOutlet.text = user1.profile.secondName
        ageOutlet.text = String(user1.profile.age)
        degreeOutlet.text = user1.profile.degree.rawValue
        labelToDisplayLogin.text = user1.login
        super.viewDidLoad()
    }
    
}
