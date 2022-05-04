//
//  ViewController.swift
//  ColorSettings
//
//  Created by Артур Сахбиев on 25.04.2022.
//

import UIKit

class SettingsColorViewController: UIViewController {

    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    var delegate: SettingsColorViewControllerDelegate!
    var color: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 30
        setSliders()
        changeColor()
        setLabelValue(for: redValue, greenValue, blueValue)
       
        navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
}
    @IBAction func rgbChangeColor(){
        changeColor()
    }
    @IBAction func rgbChangeValue(){
        changeValue()
    }
    
    @IBAction func doneButtonPressed() {
        delegate?.setColor(mainView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    func setSliders(){
        let cIColor = CIColor(color: color)
        
        redSlider.value = Float(cIColor.red)
        greenSlider.value = Float(cIColor.green)
        blueSlider.value = Float(cIColor.blue)

    }
}

extension SettingsColorViewController {
    
    private func changeColor(){
       mainView.backgroundColor = UIColor(
           red: CGFloat(redSlider.value),
           green: CGFloat(greenSlider.value),
           blue: CGFloat(blueSlider.value),
           alpha: 1
       )
}
    
    private func changeValue(){
       redValue.text = String(format: "%0.2f", redSlider.value)
       greenValue.text = String(format: "%0.2f", greenSlider.value)
       blueValue.text = String(format: "%0.2f", blueSlider.value)
   }
    
    private func setLabelValue(for labels: UILabel... ){
        labels.forEach { Label in
            switch Label {
            case redValue: Label.text = string(from: redSlider)
            case greenValue: Label.text = string(from: greenSlider)
            default: Label.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
    
