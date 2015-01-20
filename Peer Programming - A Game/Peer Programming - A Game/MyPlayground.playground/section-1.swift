// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


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
        myBadPlayer.damage = 8
        myBadPlayer.attack()
        var result = myBadPlayer.damage
        println("   --\(myBadPlayer.message) Your damage was \(myBadPlayer.damage).")
        return result
    }
    
    //Attack Two -- Indian Burn! Worth 12 points.
    func two () -> (Int) {
        myBadPlayer.message = "Indian Burn!"
        myBadPlayer.damage = 12
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

class Match {
    var myGoodPlayer = GoodPlayer(name: "Player 1")
    var myBadPlayer = BadPlayer(name: "Player 2")
    
    init (goodName: String, badName: String) {
        self.myGoodPlayer.name = goodName
        self.myBadPlayer.name = badName
    }
    

    
    func playGame() {
        println("\(myGoodPlayer.name) is going up against \(myBadPlayer.name)!")

        for index in 1...4 {
            
        if myGoodPlayer.health > 0 && myBadPlayer.health > 0 {
        println("Attack \(index)! ")
            println(" Look out, \(myGoodPlayer.name), you're under attack.")
        myGoodPlayer.health = myGoodPlayer.health - myBadPlayer.randomizedAttack()
            println("   \(myGoodPlayer.name)'s current health is \(myGoodPlayer.health)")
            println(" Look out, \(myBadPlayer.name), you're under attack.")
        myBadPlayer.health = myBadPlayer.health - myGoodPlayer.randomizedAttack()
            println("   \(myBadPlayer.name)'s current health is \(myBadPlayer.health)")
        } else if myBadPlayer.health < 0 {
            println("There is a winner!! Congrats, \(myBadPlayer.name), for losing to \(myGoodPlayer.name)!")
        } else {
            println("There is a winner!! Congrats, \(myGoodPlayer.name), for losing to \(myBadPlayer.name)!")
            }
        }
    }

}


var matchPlay = Match(goodName: "Rob", badName: "Alyssa")

matchPlay.playGame()
















