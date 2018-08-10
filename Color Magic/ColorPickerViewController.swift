//
//  ColorPickerViewController.swift
//  Color Magic
//
//  Created by Eric Andersen on 8/6/18.
//  Copyright © 2018 Devslopes. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func colorButtonWasPressed(sender: UIButton) {
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
    

}
