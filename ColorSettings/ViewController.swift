//
//  ViewController.swift
//  ColorSettings
//
//  Created by Артур Сахбиев on 25.04.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 30
}

    func changeColor(){
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
}
    func changeValue(){
        //redValue.text = String(redSlider.value)
        //greenValue.text = String(greenSlider.value)
        //blueValue.text = String(blueSlider.value)

    }
    
    @IBAction func rgbChangeColor(){
        changeColor()
    }
    @IBAction func rgbChangeValue(){
        changeValue()
    }
}

