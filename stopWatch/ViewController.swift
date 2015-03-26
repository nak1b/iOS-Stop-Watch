//
//  ViewController.swift
//  stopWatch
//
//  Created by Nakib on 3/25/15.
//  Copyright (c) 2015 Nakib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var timer = NSTimer()
    var hour = 0
    var min = 0
    var sec = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play(sender: UIBarButtonItem) {
        //starting the timer
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTimer"), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func stop(sender: UIBarButtonItem) {
        //stoping the timer
        timer.invalidate()
        
        //resetting the count and display screen
        sec = 0
        min = 0
        hour = 0
        display.text = "00:00:00"
        
    }
    
    
    @IBAction func pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    
    func updateTimer(){
        
        //Incrementing minute if 60 sec elapsed and setting it back to 0
        if(sec>=60){
            sec = 0
            min++
        }
        
        //Incrementing hour if 60 minutes elapsed and setting it back 0
        if(min>=60){
            min = 0
            hour++
        }
        
        sec++
        
        //Adding leading zero if value is less then 9
        let strMin = min>9 ? String(min): "0" + String(min)
        let strhr = hour>9 ? String(hour): "0" + String(hour)
        let strSec = sec>9 ? String(sec): "0" + String(sec)
        
        
        
        //changing the display value
        display.text = "\(strhr):\(strMin):\(strSec)"
    }


}

