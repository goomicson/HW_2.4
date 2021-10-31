//
//  InterestsViewController.swift
//  HW-2.4
//
//  Created by Сергей on 30.10.2021.
//

import UIKit

class InterestsViewController: UIViewController {

    var buttonID = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        buttonID = ""
        print ("buttonID now \(buttonID)")
    }
    
    @IBAction func musicButtonPressed(_ sender: Any) {
        buttonID = "Music"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }

    @IBAction func techButtonPressed(_ sender: Any) {
        buttonID = "Tech"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    @IBAction func moviesButtonPressed(_ sender: Any) {
        buttonID = "Movies"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    @IBAction func theatreButtonPressed(_ sender: Any) {
        buttonID = "Theatre"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    @IBAction func carsButtonPressed(_ sender: Any) {
        buttonID = "Cars"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    @IBAction func designButtonPressed(_ sender: Any) {
        buttonID = "Design"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    @IBAction func economyButtonPressed(_ sender: Any) {
        buttonID = "Economy"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    
    @IBAction func educationButtonPressed(_ sender: Any) {
        buttonID = "Education"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    @IBAction func swiftButton(_ sender: Any) {
        buttonID = "Swift"
        print("\(buttonID) button pressed")
        performSegue(withIdentifier: "detailedInteres", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let articleVC = segue.destination as? InterestsArticleViewController else {return}
        articleVC.segueID = buttonID
    }
}
