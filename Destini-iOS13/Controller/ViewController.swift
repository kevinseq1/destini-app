//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        // Gets the title of the button pressed
        let userAnswer = sender.currentTitle!
        
        // Checks if the user chose choice1 or choice2
        storyBrain.nextStory(userAnswer)
        
        // Update the UI after the user chooses an option
        updateUI()
    
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getStoryChoice1(), for: [])
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: [])
    }
    
}

