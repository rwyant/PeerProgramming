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
    @IBOutlet weak var logsText: UITextView!

    @IBAction func playGameButton(sender: AnyObject) {
        var gpName:String = goodPlayerName.text
        var bpName:String = badPlayerName.text

        var matchPlay = Match(goodName: gpName, badName: bpName)
        
        logsText.text = matchPlay.playGame()
    }
    
    @IBAction func clearGameButton(sender: AnyObject) {
        goodPlayerName.text = ""
        badPlayerName.text = ""
        logsText.text = "Logs from the match will be posted here."
    }
    
    
//
//    
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

