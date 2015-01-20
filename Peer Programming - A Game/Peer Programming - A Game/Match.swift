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

        if myGoodPlayer.name == "" || myBadPlayer.name == "" {
            return "Please submit a name for both players."
        } else {
        var result = ""
        result = "\(myGoodPlayer.name) is going up against \(myBadPlayer.name)!                                          " + "-----------------                                 " + "ROUND 1:                                            " + "\(myGoodPlayer.name)'s current health is 100.                               " + "\(myBadPlayer.name)'s current health is 100.                            "
        println("\(myGoodPlayer.name) is going up against \(myBadPlayer.name)! ")
        
        for index in 1...14 {
            
            if myGoodPlayer.health > 0 && myBadPlayer.health > 0 {
                println("ROUND \(index): ")
                println(" Look out, \(myGoodPlayer.name), you're under attack. ")
                result += "-----------------                                 " + "ROUND \(index + 1):                                            "
                myGoodPlayer.health = myGoodPlayer.health - myBadPlayer.randomizedAttack()
                println("   \(myGoodPlayer.name)'s current health is \(myGoodPlayer.health). ")
                println(" Look out, \(myBadPlayer.name), you're under attack.")
                result += "\(myGoodPlayer.name)'s current health is \(myGoodPlayer.health).                           "
                myBadPlayer.health = myBadPlayer.health - myGoodPlayer.randomizedAttack()
                println("   \(myBadPlayer.name)'s current health is \(myBadPlayer.health).")
                result += "\(myBadPlayer.name)'s current health is \(myBadPlayer.health).                             "
            } else if myBadPlayer.health <= 0 && myGoodPlayer.health <= 0 {
                result += "-----------------                                      " + "HOLY CRAP, IT'S A TIE BETWEEN \(myGoodPlayer.name.uppercaseString) AND \(myBadPlayer.name.uppercaseString)!!                   " + "-----------------                                 " + "STATS:                                            " + "Rounds -- The total number of rounds was '\(index)'.                                     " + "Damage -- The total damage inflicted was '\((100 - myBadPlayer.health) + (100 - myGoodPlayer.health) )'.                                      " + "Summary -- This doesn't happen often, but \(myGoodPlayer.name) and \(myBadPlayer.name) tied. We should all go out and buy a lottery ticket after that anomaly."
                println("The match is a tie!!")
                break
            } else if myBadPlayer.health <= 0 {
                result += "-----------------                                      " + "\(myGoodPlayer.name.uppercaseString) IS THE WINNER!!                   " + "-----------------                                 " + "STATS:                                            " + "Rounds -- The total number of rounds was '\(index)'.                                     " + "Damage -- The total damage inflicted was '\((100 - myBadPlayer.health) + (100 - myGoodPlayer.health) )'.                                      " + "Summary -- Congrats, \(myBadPlayer.name), for losing to \(myGoodPlayer.name)."
                println("\(myGoodPlayer.name) is the winner!! Congrats, \(myBadPlayer.name), for losing to \(myGoodPlayer.name).")
                break
            } else {
                result += "-----------------                                      " + "\(myBadPlayer.name.uppercaseString) IS THE WINNER!!                   " + "-----------------                                 " + "STATS:                                           " + "Rounds -- The total number of rounds was '\(index)'.                                       " + "Damage -- The total damage inflicted was '\((100 - myBadPlayer.health) + (100 - myGoodPlayer.health) )'.                                          " + "Summary -- OMG, \(myBadPlayer.name), you just pulled off an amazing upset. Mazel Tov."
                println("\(myBadPlayer.name) is the winner!! OMG, \(myBadPlayer.name), you just pulled off an amazing upset! Mazel Tov.")
                break
            }
            
        }
        return result
        }
    }
    
}