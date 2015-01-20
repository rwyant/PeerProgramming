//
//  ViewController.swift
//  Peer Programming - A Game
//
//  Created by Rob Wyant on 1/15/15.
//  Copyright (c) 2015 Rob Wyant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var goodPlayerName: UITextField!
    @IBOutlet weak var badPlayerName: UITextField!
    @IBOutlet weak var logText: UITextView!
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    

    @IBAction func playGameButton(sender: AnyObject) {
        var gpName:String = goodPlayerName.text
        var bpName:String = badPlayerName.text
        

        var matchPlay = Match(goodName: gpName, badName: bpName)
        
        logText.text = matchPlay.playGame()
        self.view.endEditing(true)
        
    }
    
    @IBAction func clearGameButton(sender: AnyObject) {
        goodPlayerName.text = ""
        badPlayerName.text = ""
        logText.text = "The logs from the match will be posted here."
        self.view.endEditing(true)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

