//
//  Game.swift
//  SwiftTest
//
//  Created by NIKOLAI BORISOV on 17.05.2021.

import Foundation

class Game {
  
  static let shared = Game()
  private init() {}
  var gameSession: GameSession?
  var results = [GameSession]()
  
  func addResults(_ result: GameSession) {
    self.results.append(result)
  }
  
  func deleteResults() {
    self.results = []
  }
  
}
