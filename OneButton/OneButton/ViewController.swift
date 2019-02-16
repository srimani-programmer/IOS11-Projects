//
//  ViewController.swift
//  OneButton
//
//  Created by sri manikanta on 16/02/19.
//  Copyright © 2019 sri manikanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonState = true  // state value
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet weak var buttonTitle: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if(buttonState){    // if it is true change the color of the background screen
            self.view.backgroundColor = UIColor.black
            buttonTitle.setTitle("Lights Out", for: .normal)
            buttonState = false
        }else{
            self.view.backgroundColor = UIColor.orange
            buttonTitle.setTitle("Lights In", for: .normal)
            buttonState = true
        }
        
    }
    
}

