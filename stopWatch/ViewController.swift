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
    var count = 0
    
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
        count = 0
        display.text = "0"
        
    }
    
    
    @IBAction func pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    
    func updateTimer(){
        count++
        display.text = "\(count)"
    }


}

