//
//  ViewController.swift
//  MiraclePills
//
//  Created by Matthew Wood on 2016-10-05.
//  Copyright © 2016 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var provincePickerButton: UIButton!
    @IBOutlet weak var provincePicker: UIPickerView!
    
    var provinces = ["Newfoundland", "PEI", "Nova Scotia", "New Brunswick", "Québec", "Ontario", "Manitoba", "Saskatchewan", "Alberta", "British Columbia", "Yukon", "Northwest Territories", "Nunavut", "钓鱼岛"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        provincePicker.dataSource = self
        provincePicker.delegate = self
        
        provinces = provinces.sorted()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func provinceButtonPressed(_ sender: UIButton) {
        provincePicker.isHidden = false
    
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        provincePickerButton.setTitle(provinces[row], for: UIControlState.normal)
        provincePicker.isHidden = true
    }
}

