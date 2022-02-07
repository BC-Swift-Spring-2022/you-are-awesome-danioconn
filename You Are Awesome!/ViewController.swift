//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Dani on 1/23/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    var audioPlayer: AVAudioPlayer!
    
    var totalNumberOfImages = 9
    var totalNumberOfSounds = 6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run!")
        messageLabel.text = " "

    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name:name) {
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("😡 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else {
            print("😡 ERROR: Could not read data from sound0.")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber : Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber

    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")

        //Making sure messages are not repeating
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Fabulous!", "You Are a Star!"]
  
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        //Making sure images are not repeating
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage.init(named: "image\(imageNumber)")
        
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        }
                    
        
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil {
                audioPlayer.stop()
        }
    }
    


    
}

