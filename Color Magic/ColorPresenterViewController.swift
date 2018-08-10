//
//  ColorPresenterViewController.swift
//  Color Magic
//
//  Created by Eric Andersen on 8/6/18.
//  Copyright © 2018 Devslopes. All rights reserved.
//

import UIKit

class ColorPresenterViewController: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerViewController" {
            guard let colorPickerViewController = segue.destination as? ColorPickerViewController else { return }
            colorPickerViewController.delegate = self
        }
    }
}
