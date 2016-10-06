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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func provinceButtonPressed(_ sender: UIButton) {
    }

}

