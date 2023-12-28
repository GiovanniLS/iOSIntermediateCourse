//
//  GameModel.swift
//  who is that pokemon
//
//  Created by alerma on 27/12/23.
//

import Foundation

struct GameModel {
    var score = 0
    
    // Revisar la respuesta correcta
    mutating func checkAnswer(_ userAnswer: String, _ correctAnswer: String) -> Bool {
        if userAnswer.lowercased() == correctAnswer.lowercased() {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    //Obtner score
    func getScore() -> Int {
        return score
    }
    
    //Reiniciar score
    mutating func setScore(score: Int) {
        self.score = score
    }
}
