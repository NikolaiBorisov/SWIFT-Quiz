//
//  WelcomeViewController.swift
//  SwiftTest
//
//  Created by NIKOLAI BORISOV on 17.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
  
  @IBOutlet weak var playButton: UIButton!
  @IBOutlet weak var resultsButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    playButton.layer.borderWidth = 2
    playButton.layer.cornerRadius = 20
    playButton.layer.borderColor = UIColor.white.cgColor
    resultsButton.layer.borderWidth = 2
    resultsButton.layer.cornerRadius = 20
    resultsButton.layer.borderColor = UIColor.white.cgColor
  }
  
  @IBAction func onPlayButtonTapped(_ sender: UIButton) {
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestViewController")
    self.navigationController?.pushViewController(vc, animated: true)
  }
  
  @IBAction func onResultsButtonTapped(_ sender: UIButton) {
  }
  
}
