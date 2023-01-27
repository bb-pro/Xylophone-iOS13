//
//  ViewController.swift
//  Xylophone
//
//  created by Bektemur Mamashaev 17.05,2022
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.3
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                //call any function
         }
        sender.alpha = 1
    
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
