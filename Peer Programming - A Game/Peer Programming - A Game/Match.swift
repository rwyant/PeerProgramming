//
//  Match.swift
//  Peer Programming - A Game
//
//  Created by Rob Wyant on 1/15/15.
//  Copyright (c) 2015 Rob Wyant. All rights reserved.
//

import Foundation

// Create a Match class that takes 2 players during initialization

class Match {
    var myGoodPlayer = GoodPlayer(name: "Player 1")
    var myBadPlayer = BadPlayer(name: "Player 2")
    
    init (goodName: String, badName: String) {
        self.myGoodPlayer.name = goodName
        self.myBadPlayer.name = badName
    }
    
    
    
    func playGame() -> (String) {
//        if myGoodPlayer.name = ""  {
//            return ""
//        } else {

        if myGoodPlayer.name == "" || myBadPlayer.name == "" {
            return "Please submit a name for both players."
        } else {
        var result = ""
        result = "\(myGoodPlayer.name) is going up against \(myBadPlayer.name)!                                          "
        println("\(myGoodPlayer.name) is going up against \(myBadPlayer.name)! ")
        
        for index in 1...14 {
            
            if myGoodPlayer.health > 0 && myBadPlayer.health > 0 {
                println("ROUND \(index): ")
                println(" Look out, \(myGoodPlayer.name), you're under attack. ")
                result += "ROUND \(index):                                            "
                myGoodPlayer.health = myGoodPlayer.health - myBadPlayer.randomizedAttack()
                println("   \(myGoodPlayer.name)'s current health is \(myGoodPlayer.health). ")
                println(" Look out, \(myBadPlayer.name), you're under attack.")
                result += "\(myGoodPlayer.name)'s current health is \(myGoodPlayer.health).                    "
                myBadPlayer.health = myBadPlayer.health - myGoodPlayer.randomizedAttack()
                println("   \(myBadPlayer.name)'s current health is \(myBadPlayer.health).")
                result += "\(myBadPlayer.name)'s current health is \(myBadPlayer.health).                     "
            } else if myBadPlayer.health < 0 {
                result += "THERE IS A WINNER!!                   Congrats, \(myBadPlayer.name), for losing to \(myGoodPlayer.name)."
                println("There is a winner!! Congrats, \(myBadPlayer.name), for losing to \(myGoodPlayer.name).")
                break
            } else {
                result += "THERE IS A WINNER!!                   Congrats, \(myGoodPlayer.name), for losing to \(myBadPlayer.name)."
                println("There is a winner!! Congrats, \(myGoodPlayer.name), for losing to \(myBadPlayer.name).")
                break
            }
            
        }
        return result
        }
    }
    
}