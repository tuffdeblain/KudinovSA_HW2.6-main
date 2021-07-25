//
//  ViewController.swift
//  KudinovSA_HW2.2
//
//  Created by Сергей Кудинов on 09.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var color: UIColor!
    var red: Float = 0
    var green: Float = 0
    var blue: Float = 0
    var delegates: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        color = changeColor(red: red, green: green, blue: blue)

        colorView.backgroundColor = color
        colorView.layer.cornerRadius = 15
        
        redSlider.value = red
        greenSlider.value = green
        blueSlider.value = blue
        
        redColorLabel.text = String(format: "%.2f", red)
        greenColorLabel.text = String(format: "%.2f", green)
        blueColorLabel.text = String(format: "%.2f", blue)
    }
    
    func changeColor(red: Float, green: Float, blue: Float) -> UIColor{
        UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        colorView.backgroundColor = changeColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)

        redColorLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        colorView.backgroundColor = changeColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
        
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        colorView.backgroundColor = changeColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
        
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
    }
    @IBAction func doneButton() {
        view.endEditing(true)
        delegates.setNewColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)

        dismiss(animated: true)
    }
}

