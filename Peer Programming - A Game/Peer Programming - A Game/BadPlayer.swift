//
//  BadPlayer.swift
//  Peer Programming - A Game
//
//  Created by Rob Wyant on 1/15/15.
//  Copyright (c) 2015 Rob Wyant. All rights reserved.
//

import Foundation

// Create a BadPlayer sub-class of Player

class BadPlayer {
    
    var myBadPlayer = Player()
    var name = "Player 2"
    var health = 100
    
    init (name:String) {
        self.myBadPlayer.name = name
    }
    
    //Attack One -- Flick! Worth 8 points.
    func one () -> (Int) {
        myBadPlayer.message = "Flick!"
        myBadPlayer.damage = 12
        myBadPlayer.attack()
        var result = myBadPlayer.damage
        println("   --\(myBadPlayer.message) Your damage was \(myBadPlayer.damage).")
        return result
    }
    
    //Attack Two -- Indian Burn! Worth 12 points.
    func two () -> (Int) {
        myBadPlayer.message = "Indian Burn!"
        myBadPlayer.damage = 19
        myBadPlayer.attack()
        var result = myBadPlayer.damage
        println("   --\(myBadPlayer.message) Your damage was \(myBadPlayer.damage).")
        return result
    }
    
    func checkHealth () -> (String) {
        var result = "Your current health is \(myBadPlayer.health)."
        return result
    }
    
    //Randomizing Attack for Bad Player
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
        if self.myBadPlayer.health > 0 {
            isAlive = true
        } else {
            isAlive = false
        }
        return isAlive
    }
    
}