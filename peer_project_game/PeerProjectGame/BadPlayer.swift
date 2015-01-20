//
//  BadPlayer.swift
//  PeerProjectGame
//
//  Created by Christopher Francis on 1/17/15.
//  Copyright (c) 2015 Christopher Francis. All rights reserved.
//

import Foundation

// Create a BadPlayer sub-class of Player

class BadPlayer : Player {
    
    // BadPlayer has a "health" interger variable that defaults to 100
    // We will inherit the default "health" value from the Player parent class
    
    // BadPlayer has an "isAlive" method that returns a Bool of true if the "health remains above 0) else, it returns a false.  
    // Should we move the isAlive method from the Player class to this class?
    
    var myBadPlayer = Player()
    
    //Attack One -- Flick to the FACE! Worth 8 points.
    func one() -> (String,Int) {
        
        myBadPlayer.message = "Flick!"
        myBadPlayer.damage = 8
        myBadPlayer.attack()
        var result = (myBadPlayer.message,myBadPlayer.damage)
        return result
    }
    
    //Attack Two -- Indian Burn! Worth 12 points.
    func two() -> (String, Int) {
        myBadPlayer.message = "Indian Burn!"
        myBadPlayer.damage = 12
        myBadPlayer.attack()
        var result = (myBadPlayer.message,myBadPlayer.damage)
        return result
    }
    
    // BadPlayer has a random number of attacks that is >= 2
    // Randomizing Attack for Bad Player
    // Does this function create a random number of attacks that is greater than or equal to 2?
    
    func randomizedAttack () {
        var random = rand()
        if random % 2 == 0 {
            one()
        } else {
            two()
        }
    }
    
}