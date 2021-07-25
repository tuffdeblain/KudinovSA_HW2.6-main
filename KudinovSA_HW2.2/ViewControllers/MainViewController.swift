//
//  MainViewController.swift
//  KudinovSA_HW2.2
//
//  Created by Сергей Кудинов on 26.07.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColor(red: Float, green: Float, blue: Float)
}

class MainViewController: UIViewController {

    var redValue: Float = 1.0
    var greenValue: Float = 1.0
    var blueValue: Float = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = changeColor(red: redValue, green: greenValue, blue: blueValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {return}
        
        settingsVC.red = redValue
        settingsVC.blue = blueValue
        settingsVC.green = greenValue
        
        settingsVC.delegates = self
    }
    
    func changeColor(red: Float, green: Float, blue: Float) -> UIColor{
        UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColor(red: Float, green: Float, blue: Float) {
        redValue = red
        greenValue = green
        blueValue = blue
        
        view.backgroundColor = changeColor(red: red, green: green, blue: blue)
    }
}
