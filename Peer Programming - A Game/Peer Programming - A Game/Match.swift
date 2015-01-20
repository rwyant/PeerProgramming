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
        result = "\(myGoodPlayer.name) is going up against \(myBadPlayer.name)!                                          " + "-----------------\n" + "ROUND 1:\n" + "\(myGoodPlayer.name)'s current health is 100.\n" + "\(myBadPlayer.name)'s current health is 100.\n"
        println("\(myGoodPlayer.name) is going up against \(myBadPlayer.name)! ")
        
        for index in 1...14 {
            
            if myGoodPlayer.health > 0 && myBadPlayer.health > 0 {
                println("ROUND \(index): ")
                println(" Look out, \(myGoodPlayer.name), you're under attack. ")
                result += "-----------------\n" + "ROUND \(index + 1):\n"
                myGoodPlayer.health = myGoodPlayer.health - myBadPlayer.randomizedAttack()
                println("   \(myGoodPlayer.name)'s current health is \(myGoodPlayer.health). ")
                println(" Look out, \(myBadPlayer.name), you're under attack.")
                result += "\(myGoodPlayer.name)'s current health is \(myGoodPlayer.health).\n"
                myBadPlayer.health = myBadPlayer.health - myGoodPlayer.randomizedAttack()
                println("   \(myBadPlayer.name)'s current health is \(myBadPlayer.health).")
                result += "\(myBadPlayer.name)'s current health is \(myBadPlayer.health).\n"
            } else if myBadPlayer.health <= 0 && myGoodPlayer.health <= 0 {
                result += "-----------------\n" + "HOLY CRAP, IT'S A TIE BETWEEN \(myGoodPlayer.name.uppercaseString) AND \(myBadPlayer.name.uppercaseString)!!\n" + "-----------------\n" + "STATS:\n" + "Rounds -- The match lasted '\(index)' rounds.\n" + "Damage -- The total damage inflicted was '\((100 - myBadPlayer.health) + (100 - myGoodPlayer.health) )'.\n" + "Summary -- This doesn't happen often, but \(myGoodPlayer.name) and \(myBadPlayer.name) just tied. We should all go out and buy a lottery ticket after that anomaly."
                println("The match is a tie!!")
                break
            } else if myBadPlayer.health <= 0 {
                result += "-----------------\n" + "\(myGoodPlayer.name.uppercaseString) IS THE WINNER!!\n" + "-----------------\n" + "STATS:\n" + "Rounds -- The match lasted '\(index)' rounds.\n" + "Damage -- The total damage inflicted was '\((100 - myBadPlayer.health) + (100 - myGoodPlayer.health) )'.\n" + "Summary -- Congrats, \(myBadPlayer.name), for losing to \(myGoodPlayer.name)."
                println("\(myGoodPlayer.name) is the winner!! Congrats, \(myBadPlayer.name), for losing to \(myGoodPlayer.name).")
                break
            } else {
                result += "-----------------\n" + "\(myBadPlayer.name.uppercaseString) IS THE WINNER!!\n" + "-----------------\n" + "STATS:\n" + "Rounds -- The match lasted '\(index)' rounds.\n" + "Damage -- The total damage inflicted was '\((100 - myBadPlayer.health) + (100 - myGoodPlayer.health) )'.\n" + "Summary -- OMG, \(myBadPlayer.name), you just pulled off an amazing upset. Mazel Tov."
                println("\(myBadPlayer.name) is the winner!! OMG, \(myBadPlayer.name), you just pulled off an amazing upset! Mazel Tov.")
                break
            }
            
        }
        return result
        }
    }
    
}