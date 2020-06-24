//
//  ViewController.swift
//  Sliderview
//
//  Created by sri manikanta on 24/06/20.
//  Copyright © 2020 Sri Manikanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderObject: UISlider!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "\(sliderObject.value)"
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderActionPerformed(_ sender: UISlider) {
        outputLabel.text = "\(sliderObject.value)"
    }
    
}

