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
    
    @IBOutlet var buttonLabel: UIButton!
    

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
//Part 8: Set up If/Else statement to iterate through each item in array upon button press
    @IBAction func buttonPressed(_ sender: Any) {
        
        if currentIndex < favoriteFoodsArray.count
        {
            bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            currentIndex += 1
        }
    else
        {
            print("button has been disabled")
            (buttonLabel as UIButton).isEnabled=false
        }
            
    
    }
    
    

}

