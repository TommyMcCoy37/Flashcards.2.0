//
//  ViewController.swift
//  Flashcards.2.0
//
//  Created by Tommy McCoy on 10/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Place IBO Outlets here.
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var correctChoice: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Styles and adds shadow to the card container.
        card.layer.cornerRadius = 20
        card.layer.shadowRadius = 20.0
        card.layer.shadowOpacity = 0.5
        
        // Styles the labels to have a nice rounded edge.
        frontLabel.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        backLabel.layer.cornerRadius = 20.0
        backLabel.clipsToBounds = true
        
        // Styles the buttons.
        choice1.layer.borderWidth = 2
        choice1.layer.cornerRadius = 20
        choice1.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)

              
        correctChoice.layer.borderWidth = 2
        correctChoice.layer.cornerRadius = 20
        correctChoice.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)

              
        choice3.layer.borderWidth = 2
        choice3.layer.cornerRadius = 20
        choice3.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    //IBActions go here.
    
    @IBAction func didTapOnFlashCard(_ sender: Any) {
        frontLabel.isHidden = !frontLabel.isHidden
    }
    
    @IBAction func didTapButton1(_ sender: Any) {
        choice1.isHidden = true
    }
    
    @IBAction func didTapCorrectChoice(_ sender: Any) {
        frontLabel.isHidden = true
        choice1.isHidden = true
        choice3.isHidden = true
    }
    
    @IBAction func didTapButton3(_ sender: Any) {
        choice3.isHidden = true
    }
    
    func updateFlashcard(question: String, answer: String, choice1: String, choice3: String){

        frontLabel.text = question
        backLabel.text = answer
        
    
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }
    
}

