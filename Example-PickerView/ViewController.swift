//
//  ViewController.swift
//  Example-PickerView
//
//  Created by Mayur Vaity on 29/05/24.
//

import UIKit

class ViewController: UIViewController {

    let countries = ["Germany", "USA", "Canada", "Japan", "Australia", "France", "United Kingdom", "China", "Saudi Arabia", "Switzerland"]
    
    @IBOutlet weak var countryTF: UITextField!
    
    var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //obj of pickerview created
        pickerView = UIPickerView()
        //assigning delegate and datasource
        pickerView.delegate = self
        pickerView.dataSource = self
        //assigning pickerview to TF
        countryTF.inputView = pickerView
        //default value for TF
        countryTF.text = countries[0]
    }

    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //to assign selected value to TF
        countryTF.text = countries[row]
        //to hide pickerview once a value is selected
        self.view.endEditing(true)
    }
    
}
