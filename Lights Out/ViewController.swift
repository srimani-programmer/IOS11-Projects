//
//  ViewController.swift
//  Lights Out
//
//  Created by sri manikanta on 12/02/19.
//  Copyright © 2019 sri manikanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func lightsOutTapped(_ sender: Any) {
        self.view.backgroundColor = UIColor.black
    }
    

    @IBAction func lightsInTapped(_ sender: Any) {
        self.view.backgroundColor = UIColor.white
    }
}

