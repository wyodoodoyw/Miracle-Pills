//
//  ViewController.swift
//  MiraclePills
//
//  Created by Matthew Wood on 2016-10-05.
//  Copyright © 2016 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var miraclePillEmoji: UIImageView!
    @IBOutlet weak var miraclePillsLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var provincePickerButton: UIButton!
    @IBOutlet weak var provincePicker: UIPickerView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var postalCodeLabel: UILabel!
    @IBOutlet weak var postalCodeTextField: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var successIndicatorImage: UIImageView!
    
    var provinces = ["Newfoundland", "PEI", "Nova Scotia", "New Brunswick", "Québec", "Ontario", "Manitoba", "Saskatchewan", "Alberta", "British Columbia", "Yukon", "Northwest Territories", "Nunavut", "钓鱼岛"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        provincePicker.dataSource = self
        provincePicker.delegate = self
        
        // hide success indicator
        successIndicatorImage.isHidden = true
        
        // sort provinces array alphabetically
        provinces = provinces.sorted()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func provinceButtonPressed(_ sender: UIButton) {
        // hide labels and text fields
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        postalCodeLabel.isHidden = true
        postalCodeTextField.isHidden = true
        // show province picker
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
        // change button text to chosen province
        provincePickerButton.setTitle(provinces[row], for: UIControlState.normal)
        
        // show labels and text fields
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        postalCodeLabel.isHidden = false
        postalCodeTextField.isHidden = false
        
        // hide the picker when done
        provincePicker.isHidden = true
    }
    
    func hideAllItems() {
        miraclePillEmoji.isHidden = true
        miraclePillsLabel.isHidden = true
        priceLabel.isHidden = true
        divider.isHidden = true
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        addressLabel.isHidden = true
        addressTextField.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        postalCodeLabel.isHidden = true
        postalCodeTextField.isHidden = true
        provincePicker.isHidden = true
    }
    
    func showAllItems() {
        miraclePillEmoji.isHidden = false
        miraclePillsLabel.isHidden = false
        priceLabel.isHidden = false
        divider.isHidden = false
        nameLabel.isHidden = false
        nameTextField.isHidden = false
        addressLabel.isHidden = false
        addressTextField.isHidden = false
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        postalCodeLabel.isHidden = false
        postalCodeTextField.isHidden = false
        provincePicker.isHidden = false
    }

    @IBAction func buyNowButtonPressed(_ sender: AnyObject) {
        hideAllItems()
        successIndicatorImage.isHidden = false
    }

}

