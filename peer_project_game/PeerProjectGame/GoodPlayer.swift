//
//  GoodPlayer.swift
//  PeerProjectGame
//
//  Created by Christopher Francis on 1/17/15.
//  Copyright (c) 2015 Christopher Francis. All rights reserved.
//

import Foundation


// Create a GoodPlayer sub-class of Player

class GoodPlayer : Player {
    
    
    // GoodPlayer has a "health" interger variable that defaults to 100
    // We will inherit the default "health" value from the Player parent class
    
    // GoodPlayer has an "isAlive" method that returns a Bool of true if the "health remains above 0) else, it returns a false.  
    // Should we move the isAlive method from the Player class to this class?
    
    
        var myGoodPlayer = Player()
        
        //Attack One -- Uppercut to the FACE! Worth 38 points.
        func one() -> (String,Int) {
            
            myGoodPlayer.message = "Uppercut to the FACE!"
            myGoodPlayer.damage = 38
            myGoodPlayer.attack()
            var result = (myGoodPlayer.message,myGoodPlayer.damage)
            return result
        }
        
        //Attack Two -- Low Blow! Worth 42 points.
        func two() -> (String, Int) {
            myGoodPlayer.message = "Low blow [embarassed emoji]."
            myGoodPlayer.damage = 42
            myGoodPlayer.attack()
            var result = (myGoodPlayer.message,myGoodPlayer.damage)
            return result
        }

    
    // GoodPlayer has a random number of attacks that is >= 2
    //Randomizing Attack for Good Player
    // Does this function create a random number of attacks that is greater than or equal to 2?
    
    func randomizedAttack() {
        var random = rand()
        if random % 2 == 0 {
            one()
        } else {
            two()
        }
    }
    
}
