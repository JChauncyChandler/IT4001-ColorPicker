//
//  ViewController.swift
//  ColorPicker
//
//  Created by Chandler, Jackson C. (MU-Student) on 12/11/17.
//  Copyright © 2017 Chandler, Jackson C. (MU-Student). All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var colorsArray = [colorStruct]()
    
    @IBOutlet var viewOutlet: UIView!
    @IBOutlet weak var selectionPicker: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutlet.backgroundColor = UIColor.red
        createArray()
        colorPicker.delegate = self
        colorPicker.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsArray.count
    }
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsArray[row].colorName
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colorsArray[row].colorName
        viewOutlet.backgroundColor = colorsArray[row].colorValue
    }
    
    
    func createArray(){
        let rad = colorStruct(
            colorName: "Red",
            colorValue: UIColor.red
        )
        let bloo = colorStruct(
            colorName: "Blue",
            colorValue: UIColor.blue
        )
        let grass = colorStruct(
            colorName: "Green",
            colorValue: UIColor.green
        )
        let tangerine = colorStruct(
            colorName: "Orange",
            colorValue: UIColor.orange
        )
        let nurple = colorStruct(
            colorName: "Purple",
            colorValue: UIColor.purple
        )
        colorsArray += [rad, bloo, grass, tangerine, nurple]
    }
}

