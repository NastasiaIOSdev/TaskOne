//
//  ViewController.swift
//  TaskOne
//
//  Created by Анастасия Ларина on 23.06.2021.
//

import UIKit

class GuessViewController: UIViewController {
    
    var score = 1
    
    // MARK: - Outlets
    
    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var guessMessageLabel: UILabel!
    @IBOutlet weak var attemptsLabel: UILabel!
    @IBOutlet weak var scoreAttemptsLabel: UILabel!
    // MARK: - Actions
    
    @IBAction func guessButton(_ sender: Any) {
        score = score + 1
        scoreAttemptsLabel.text = String(score)
        let answer = arc4random_uniform(101)
        let userInput = guessTextField.text
        let inputAsInt = Int(userInput!)
        if let guess = inputAsInt {
            if(guess > 100) {
                guessMessageLabel.text = "Please enter an integer from 0 to 100!"
                print(answer)
            } else if(guess < answer) {
                guessMessageLabel.text = "Higher! Try again."
                print(answer)
            } else if(guess > answer) {
                guessMessageLabel.text = "Lower! Try again."
                print(answer)
            } else {
                guessMessageLabel.text = "Guessed! The answer was \(answer)."
                print(answer)
            }
        }
    }
    
    @IBAction func tryAgainButton(_ sender: Any) {
        guessMessageLabel.text = ""
        guessTextField.text = ""
    }
    
    // MARK: - Life cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessMessageLabel.text = ""
    }


}

