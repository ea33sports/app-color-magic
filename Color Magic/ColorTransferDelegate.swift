//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Eric Andersen on 8/7/18.
//  Copyright © 2018 Devslopes. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
