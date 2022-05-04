//
//  StartColorSettingsViewController.swift
//  ColorSettings
//
//  Created by Артур Сахбиев on 04.05.2022.
//

import UIKit

protocol SettingsColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class StartColorSettingsViewController: UIViewController {
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsColorVC = segue.destination as? SettingsColorViewController else {return}
        settingsColorVC.delegate = self
        settingsColorVC.color = view.backgroundColor
    }
}

extension StartColorSettingsViewController: SettingsColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
