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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     //   colorView.backgroundColor = changeColor(red: redSlider, green: greenSlider, blue: blueSlider)
        colorView.layer.cornerRadius = 15
    }
    
    func changeColor(red: UISlider, green: UISlider, blue: UISlider) -> UIColor{
        UIColor(red: CGFloat(red.value), green: CGFloat(green.value), blue: CGFloat(blue.value), alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        colorView.backgroundColor = changeColor(red: redSlider, green: greenSlider, blue: blueSlider)

        redColorLabel.text = String(round(redSlider.value * 100) / 100)
    }
    
    @IBAction func greenSliderAction() {
        colorView.backgroundColor = changeColor(red: redSlider, green: greenSlider, blue: blueSlider)
        
        greenColorLabel.text = String(round(greenSlider.value * 100) / 100)
    }
    
    @IBAction func blueSliderAction() {
        colorView.backgroundColor = changeColor(red: redSlider, green: greenSlider, blue: blueSlider)
        
        blueColorLabel.text = String(round(blueSlider.value * 100) / 100)
    }
}

