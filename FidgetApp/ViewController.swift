//
//  ViewController.swift
//  FidgetApp
//
//  Created by Sarah Mae Campbell on 4/15/21.
//  Copyright © 2021 Sarah Mae Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var ColorShift: UIView!
    let colors: [UIColor] = [.black, .magenta, .red, .orange, .yellow, .green,.cyan, .blue, .purple,.brown]
    var currentColor = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        
        //currently trying to reaserch how to pull off what this is planned to be.
        
    }
}

