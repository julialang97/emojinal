//
//  ViewController.swift
//  emojinalProject
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var emojis = ["🤰" : "prego", "😔" : "depressed", "🤠" : "yeehaw!"]
    
    let customMessages = [
        "prego" : ["you're prego!! congrats!", "it's time for your weekly checkup!", "It's a GIRL!"],
        "depressed" : ["I reccomend visiting a therapist hehe", "go get ice cream", "take a stroll and some deep breaths."],
        "yeehaw!" : ["you're doin great! dont need me!", "Go you!!" ,"YEEEHAWWWW!"]
    ]
    
    
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmoji = sender.titleLabel?.text
        
        var randomNum = Int.random(in: 0..<3)
        
        let emojiMessage = customMessages[emojis[selectedEmoji!]!]?[randomNum]
        
        // here I want to extract the word that goes with my emoji
        // then find that word in the dictionary
        // get it's value (array)
        // and access the first element
        
        let alertController = UIAlertController(title: "Emojions", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
            
            
        present(alertController, animated: true, completion: nil)
        
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
    

    }
}
