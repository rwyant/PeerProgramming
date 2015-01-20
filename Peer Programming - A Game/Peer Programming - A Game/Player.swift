//
//  Player.swift
//  Peer Programming - A Game
//
//  Created by Rob Wyant on 1/15/15.
//  Copyright (c) 2015 Rob Wyant. All rights reserved.
//

import Foundation

// Create a Player superclass

class Player {
    var name = ""
    var message = "Boom!"
    var damage = 0
    var health = 100
    
    func attack () -> (String,Int) {
        var result = (message, damage)
        return result
        
    }
    
}
