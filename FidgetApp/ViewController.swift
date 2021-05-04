//
//  ViewController.swift
//  FidgetApp
//
//  Created by Sarah Mae Campbell on 4/15/21.
//  Copyright © 2021 Sarah Mae Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buzzyButton: UIButton!
    @IBOutlet weak var colorMode: UISwitch!
    var darkMode = false
    @IBOutlet weak var ColorShift: UIView!
    var colors: [UIColor] = [.black, .magenta, .red, .orange, .yellow, .green,.cyan, .blue, .purple,.brown]
    var currentColor = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func vibrate(for type: UINotificationFeedbackGenerator.FeedbackType) {
        let notificationGenerator = UINotificationFeedbackGenerator()
        notificationGenerator.prepare()
        notificationGenerator.notificationOccurred(type)
    }
    @IBAction func tapColor(_ sender: UITapGestureRecognizer) {
        if currentColor <= 8 {
            currentColor += 1
        } else {
            currentColor = 0
        }

        ColorShift.backgroundColor = colors[currentColor]

    }
    
    @IBAction func buzzButton(_ sender: UIButton) {
        vibrate(for: .success)
    }
    func colorSwitch() {
        if darkMode == true {
            view.backgroundColor = .black
            buzzyButton.titleLabel?.textColor = .white
            colorMode.tintColor = .white
            colorMode.thumbTintColor = .black
            colors[0] = .white
            ColorShift.backgroundColor = colors[currentColor]
        } else {
            view.backgroundColor = .white
            buzzyButton.titleLabel?.textColor = .black
            colorMode.tintColor = .black
            colorMode.thumbTintColor = .white
            colors[0] = .black
            ColorShift.backgroundColor = colors[currentColor]
        }
    }
    
    @IBAction func colorModeSwitch(_ sender: UISwitch) {
        if colorMode.isOn {
            darkMode = true
            colorSwitch()
        } else {
            darkMode = false
            colorSwitch()
        }
    }
}

