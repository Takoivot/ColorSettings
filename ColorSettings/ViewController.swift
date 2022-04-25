//
//  ViewController.swift
//  ColorSettings
//
//  Created by Артур Сахбиев on 25.04.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mainColorView: UIView!
    
    @IBOutlet var redSlider: UIView!
    @IBOutlet var greenSlider: UIView!
    @IBOutlet var blueSlider: UIView!
    
    @IBOutlet var lableOfRedSlider: UIView!
    @IBOutlet var lableOfGreenSlider: UIView!
    @IBOutlet var lableOfBlueColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainColorView.layer.cornerRadius = 20
    }


    @IBAction func changeAlphaRedColor() {
    }
    @IBAction func changeAlphaGreenColor() {
    }
    @IBAction func changeAlphaBlueColor() {
    }
}

