//
//  ViewController.swift
//  HackwichFive
//
//  Created by Kawena Villafania on 10/2/22.
//

import UIKit

class ViewController: UIViewController {
//Part 4: Created IBOutlets
    @IBOutlet var topLabel: UILabel!
    
    @IBOutlet var bottomLabel: UILabel!

//Part 6: Declare & Assign two New variables
    var currentIndex = 0
    
    var favoriteFoodsArray = ["Burritos", "Sushi", "Fries", "Adobo", "Curry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

//Part 5: Set the topLabel's text
        self.topLabel.text = "My Favorite Foods"

//Part 7: Display item at index [0] upon app launch
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }

    

}

