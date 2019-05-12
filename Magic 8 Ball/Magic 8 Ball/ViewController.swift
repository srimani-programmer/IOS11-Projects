//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by sri manikanta on 12/05/19.
//  Copyright © 2019 Sri Manikanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answerImage: UIImageView!
    
    var randomNumber : Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionPerformed(_ sender: UIButton) {
        // Calling the function
        genearteAnswer();
    }
    
    // Generating the Gestures.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        genearteAnswer();
    }
    
    func genearteAnswer(){
        randomNumber = Int.random(in: 1...5);
        answerImage.image = UIImage(named: "ball\(randomNumber)");
    }
    
}

