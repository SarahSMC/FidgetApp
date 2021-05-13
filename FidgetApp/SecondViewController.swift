//
//  SecondViewController.swift
//  FidgetApp
//
//  Created by Sarah Mae Campbell on 4/30/21.
//  Copyright © 2021 Sarah Mae Campbell. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {

    @IBOutlet weak var colorModeSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func bubble(_ sender: UIButton) {
        var bubblePop = AVAudioPlayer()
        let path = Bundle.main.path(forResource: "pop.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            bubblePop = try AVAudioPlayer(contentsOf: url)
            bubblePop.play()
        } catch {
            print("Error")
        }
    }
    
    @IBAction func colorSwitch(_ sender: UISwitch) {
        if colorModeSwitch.isOn {
            view.backgroundColor = .black
            colorModeSwitch.tintColor = .black
            colorModeSwitch.thumbTintColor = .white
        } else {
            view.backgroundColor = .white
            colorModeSwitch.tintColor = .white
            colorModeSwitch.thumbTintColor = .black
        }
    }
    
}
