//
//  UILabel+Ext.swift
//  SwiftTest
//
//  Created by NIKOLAI BORISOV on 17.05.2021.
//

import UIKit

extension UILabel {
  
  func roundCorners() {
    self.layer.cornerRadius = self.frame.height / 2
    self.layer.borderColor = UIColor.orange.cgColor
    self.layer.borderWidth = 2
  }
}
