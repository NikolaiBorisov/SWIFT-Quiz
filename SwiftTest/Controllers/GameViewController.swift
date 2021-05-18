//
//  LoginViewController.swift
//  SwiftTest
//
//  Created by NIKOLAI BORISOV on 06.02.2021.
//  Тест по основам языка SWIFT

import UIKit

class GameViewController: UIViewController {
  
  @IBOutlet weak var restartButton: UIButton!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var timerLabel: UILabel!
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var choice1: UIButton!
  @IBOutlet weak var choice2: UIButton!
  @IBOutlet weak var choice3: UIButton!
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var statusLabel: UILabel!
  @IBOutlet weak var helpButton: UIButton!
  
  private var questionModel = QuestionModel()
  private var timer = Timer()
  private var timeLimit = 1800 {
    didSet {
      timerLabel.text = "Timer:\(timeLimit)"
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupRestartTimerButton()
    roundCornersForUIElements()
    updateUI()
  }
  
  private func roundCornersForUIElements() {
    scoreLabel.roundCorners()
    timerLabel.roundCorners()
    statusLabel.roundCorners()
    helpButton.roundCorners(with: 2)
    choice1.roundCorners(with: 4)
    choice2.roundCorners(with: 4)
    choice3.roundCorners(with: 4)
  }
  
  private func setupRestartTimerButton() {
    restartButton.roundCorners(with: 2)
    restartButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    restartButton.setTitleColor(.green, for: .normal)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    timerLabel.textColor = .green
    timer = Timer.scheduledTimer(
      timeInterval: 1,
      target: self,
      selector: #selector(tick),
      userInfo: nil,
      repeats: true
    )
  }
  
  @IBAction func onHelpButtonTapped(_ sender: UIButton) {
    guard let url = URL(string: "https://swiftbook.ru/content/languageguide/basics/"),
          UIApplication.shared.canOpenURL(url) else { return }
    UIApplication.shared.open(url, options: [:], completionHandler: nil)
  }
  
  @IBAction func restartButton(_ sender: UIButton) {
    timer.invalidate()
    timeLimit = 1800
    timerLabel.text = "Timer:\(timeLimit)"
    statusLabel.text = "You have 30min to complete the test"
    statusLabel.textColor = .white
    timer = Timer.scheduledTimer(
      timeInterval: 1,
      target: self,
      selector: #selector(tick),
      userInfo: nil,
      repeats: true
    )
  }
  
  @objc func tick() {
    timeLimit -= 1
    
    if timeLimit == 0 {
      timer.invalidate()
      statusLabel.text = "Time's up!"
      statusLabel.textColor = .systemRed
    }
  }
  //Функция перезагрузки таймера не работает, хотел сделать перезагрузку сразу после последнего вопроса
  func reloadTimer() {
    if questionModel.questionNumber == 99 {
      timer.invalidate()
      statusLabel.text = "You've finished the test!"
      timer = Timer.scheduledTimer(
        timeInterval: 1, target: self,
        selector: #selector(tick),
        userInfo: nil,
        repeats: true
      )
      timeLimit = 1800
      timeLimit -= 1
    }
  }
  
  @IBAction func answerButtonPressed(_ sender: UIButton) {
    
    let userAnswer = sender.currentTitle!
    
    let userGotItRight = questionModel.checkAnswer(userAnswer: userAnswer)
    if userGotItRight {
      sender.backgroundColor = UIColor.green
    } else {
      sender.backgroundColor = UIColor.red
    }
    questionModel.moveToTheNextQuestion()
    
    Timer.scheduledTimer(
      timeInterval: 0.2,
      target: self,
      selector: #selector(updateUI),
      userInfo: nil,
      repeats: false
    )
  }
  
  @objc func updateUI() {
    questionLabel.text = questionModel.getQuestionText()
    
    //Fetch the answers and update the button title
    let answerChoices = questionModel.getAnswers()
    choice1.setTitle(answerChoices[0], for: .normal)
    choice2.setTitle(answerChoices[1], for: .normal)
    choice3.setTitle(answerChoices[2], for: .normal)
    
    progressBar.progress = questionModel.getProgress()
    scoreLabel.text = "Score: \(questionModel.getScore()) out of 100"
    
    choice1.backgroundColor = UIColor.tertiaryLabel
    choice2.backgroundColor = UIColor.tertiaryLabel
    choice3.backgroundColor = UIColor.tertiaryLabel
  }
  
}
