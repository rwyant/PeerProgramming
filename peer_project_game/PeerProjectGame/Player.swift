//
//  Player.swift
//  PeerProjectGame
//
//  Created by Christopher Francis on 1/17/15.
//  Copyright (c) 2015 Christopher Francis. All rights reserved.
//

import Foundation


// Create a Player superclass

class Player {
    var message = "Boom!"
    var damage = 0
    var health = 100
    
    // Message is a message the player says during an attack
    // Damage is the amount of damage that it does
    
    // Does this function belong in this class or should it be moved to the GoodPlayer & BadPlayer classes?
    
    func isAlive() -> Bool {
        var isPlayerAlive = true
        if health > 0 {
            isPlayerAlive = true
        } else {
            isPlayerAlive = false
        }
        return isPlayerAlive
    }
    
    // Player has an "Attack" method which returns a tuple (message: String, damage: Int)
    
    func attack() -> (String,Int) {
        var result = (message, damage)
        return result
    }
}