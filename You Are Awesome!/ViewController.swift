//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Dani on 1/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run!")
        messageLabel.text = " "

    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        print(imageNumber)
        let imageName = "image\(Int.random(in: 0...9))"
       
        imageView.image = UIImage(named: imageName)

        
        var messages = ["You Are Awesome!", "You Are Great!", "You Are Fabulous!", "You Are a Star!"]
        
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        
        
        
        
        
            //        let awesomeMessage = "You Are Awesome!"
            //        let greatMessage = "You Are Great!"
            //        let daBombMessage = "You Are Da Bomb!"
            //
            //        if messageLabel.text == awesomeMessage {
            //            messageLabel.text = greatMessage
            //            messageLabel.textColor = UIColor.purple
            //            imageView.image = UIImage(named: "image1")
            //        } else if messageLabel.text == greatMessage {
            //            messageLabel.text = daBombMessage
            //            messageLabel.textColor = UIColor.blue
            //            imageView.image = UIImage(named: "image2")
            //        } else {
            //            messageLabel.text = awesomeMessage
            //            messageLabel.textColor = UIColor.red
            //            imageView.image = UIImage(named: "image0")
            //        }
        
        
    }
    
    


    
}

