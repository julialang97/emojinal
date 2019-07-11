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
    
    @IBAction func showMessage(sender: UIButton) {
        
        var emojis = ["🤰" : "prego!", "😔" : "sad boi hours", "🤠" : "yeehaw!!"]
        
        let selectedEmoji = sender.titleLabel?.text
        
        
        let alertController = UIAlertController(title: "Emojions", message: emojis[selectedEmoji!], preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        
        present(alertController, animated: true, completion: nil)
        
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
    

    }
}
