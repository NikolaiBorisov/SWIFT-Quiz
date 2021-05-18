//
//  Questions.swift
//  SwiftTest
//
//  Created by NIKOLAI BORISOV on 06.02.2021.
//

import Foundation

struct Question {
  let text: String
  let answers: [String]
  let correctAnswer: String
  
  init(text: String, answers: [String], corAnsw: String) {
    self.text = text
    self.answers = answers
    self.correctAnswer = corAnsw
  }
}
