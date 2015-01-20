//
//  GoodPlayer.swift
//  Peer Programming - A Game
//
//  Created by Rob Wyant on 1/15/15.
//  Copyright (c) 2015 Rob Wyant. All rights reserved.
//

import Foundation


// Create a GoodPlayer sub-class of Player

class GoodPlayer {
    
    var myGoodPlayer = Player()
    var name = "Player 1"
    var health = 100
    
    init (name:String) {
        self.myGoodPlayer.name = name
    }
    
    //Attack One -- Uppercut to the FACE! Worth 38 points.
    func one () -> (Int) {
        
        myGoodPlayer.message = "Uppercut to the FACE!"
        myGoodPlayer.damage = 38
        myGoodPlayer.attack()
        var result = myGoodPlayer.damage
        println("   --\(myGoodPlayer.message) Your damage was \(myGoodPlayer.damage).")
        return result
    }
    
    //Attack Two -- Low Blow! Worth 42 points.
    func two () -> (Int) {
        myGoodPlayer.message = "Low blow [embarassed emoji]."
        myGoodPlayer.damage = 42
        myGoodPlayer.attack()
        var result = myGoodPlayer.damage
        println("   --\(myGoodPlayer.message) Your damage was \(myGoodPlayer.damage).")
        return result
    }
    
    func checkHealth () -> (String) {
        var result = "Your current health is \(myGoodPlayer.health)."
        return result
    }
    
    //Randomizing Attack for Good Player
    func randomizedAttack () -> (Int) {
        var random = rand()
        if random % 2 == 0 {
            return one()
        } else {
            return two()
        }
    }
    
    func isAlive() -> Bool {
        var isAlive = true
        if myGoodPlayer.health > 0 {
            isAlive = true
        } else {
            isAlive = false
        }
        return isAlive
    }
    
}




