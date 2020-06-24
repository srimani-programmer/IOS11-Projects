//
//  ViewController.swift
//  PickerView
//
//  Created by sri manikanta on 24/06/20.
//  Copyright © 2020 Sri Manikanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var DataLabel: UILabel!
    var weekDays :[String] = ["Sunday","Monady", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.dataSource = self
        pickerView.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return weekDays.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let day = weekDays[row]
        DataLabel.text = "\(day)"
        return day
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        DataLabel.text = "\(weekDays[row])"
    }


}

