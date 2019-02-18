//
//  JokeDefinitionViewController.swift
//  Joke Bank
//
//  Created by Manny on 2/17/19.
//  Copyright © 2019 devPro. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = ""

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = joke
        selectedJoke()
    }
    
    func selectedJoke() {
        
        switch joke {
            case "Chicken":
                questionLabel.text = "Did you hear about the chicken who could only lay eggs in the winter?"
                answerLabel.text = "She was no spring chicken."
            case "Walk into a bar...":
                questionLabel.text = "A man walked into a bar to have a few drinks."
                answerLabel.text = "The bartender asked him, What'll you have? He said, Surprise me. So he showed me a naked picture of my wife."
            case "Olives":
                questionLabel.text = "What do you call the worlds best diplomat?"
                answerLabel.text = "Olive Branch"
            case "Racer":
                questionLabel.text = "What do you call 1,000 Restrictor plates at the bottom of the ocean?"
                answerLabel.text = "A Good Start."
            case "Programmers":
                questionLabel.text = "How many programmers does it take to change a light bulb?"
                answerLabel.text = "None – It’s a hardware problem"
            default:
                print("Invalid question")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
