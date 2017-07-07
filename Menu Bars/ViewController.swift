//
//  ViewController.swift
//  Menu Bars
//
//  Created by David Kooistra on 5/16/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var timeInSec = 210
    
    
    
    
    @IBOutlet weak var labelTimeDisplay: UILabel!
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func minusTenSecButton(_ sender: Any) {
        if(timeInSec > 10){
            timeInSec -= 10
            labelTimeDisplay.text = String(timeInSec)
        }
    }
    @IBAction func addTenSecButton(_ sender: Any) {
        timeInSec += 10
        labelTimeDisplay.text = String(timeInSec)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        timeInSec = 210
        labelTimeDisplay.text = String(timeInSec)
    }
    
    func decreaseTimer() {
        if timeInSec > 0 {
            
            timeInSec -= 1
            labelTimeDisplay.text = String(timeInSec)
            
        }
        else {
            timer.invalidate()
        }
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

