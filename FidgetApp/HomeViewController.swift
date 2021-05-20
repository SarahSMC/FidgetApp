//
//  HomeViewController.swift
//  FidgetApp
//
//  Created by Sarah Mae Campbell on 5/19/21.
//  Copyright © 2021 Sarah Mae Campbell. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var colorModeSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
