//
//  UIButton+Ext.swift
//  SwiftTest
//
//  Created by NIKOLAI BORISOV on 17.05.2021.


import UIKit

extension UIButton {
  
  func roundCorners(with radius: Int) {
    self.layer.cornerRadius = self.frame.height / CGFloat(radius)
    self.layer.borderColor = UIColor.white.cgColor
    self.layer.borderWidth = 2
  }
}
