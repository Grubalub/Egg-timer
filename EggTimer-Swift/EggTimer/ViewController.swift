//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    
    var counter = 60
    
    var timer = Timer()
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        counter = eggTimes[hardness]!
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @IBOutlet weak var Titlepage: UILabel!
    
    @objc func updateTimer(){
        if counter > 0 {
            print ("\(counter) seconds")
            counter -= 1}
        else if counter == 0 {
            Titlepage.text = ("Done!")
        }
        
    }
}



