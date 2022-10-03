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
        
        if currentIndex < favoriteFoodsArray.count //Set up conditional statement & the framework for conditional statement
        {
            bottomLabel.text = favoriteFoodsArray[currentIndex] //The text of the bottomLabel will display the currentIndex of the favoriteFoodsArray
            buttonLabel.setTitle("Next", for: UIControl.State.normal) //Setting the button's title to "next" will indicate to the user to keep pressing                                                           the button
            currentIndex += 1                                   //Since there are still more elements within the favoriteFoodsArray, the currentIndex                                                       needs to increase by 1
        }
    else
        {
            print("button has been disabled")                   //After all elements of the favoriteFoodsArray has been displayed, the button needs to be                                                   disabled--it needs to come to a stop
            (buttonLabel as UIButton).isEnabled=false           //This indicates that the action of the buttonLabel has stopped
        }
            
    
    }
    
    

}

