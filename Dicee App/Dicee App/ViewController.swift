//
//  ViewController.swift
//  Dicee App
//
//  Created by sri manikanta on 28/04/19.
//  Copyright © 2019 Sri Manikanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceNumber1 : Int = 0;
    var randomDiceNumber2 : Int = 0;
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Calling the Image changing function.
        changeUIImage();
    }
    
    // Motion events in iOS Application
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeUIImage();
    }
    
    func changeUIImage(){
        randomDiceNumber1 = Int.random(in: 1...6);
        randomDiceNumber2 = Int.random(in: 1...6);
        
        // UIImage is a datatype that takes image name to change in the display.
        diceImageView1.image = UIImage(named: "dice\(randomDiceNumber1)");
        diceImageView2.image = UIImage(named: "dice\(randomDiceNumber2)");
    }
    
}

