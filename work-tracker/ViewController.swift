//
//  ViewController.swift
//  work-tracker
//
//  Created by Dmitrii Trifonov on 24.02.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var startTime: Date?
    var stopTime: Date?
    var timer: Timer?
    @IBOutlet var timeLabel: UILabel!
    
    @IBAction func startStopButton(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        if !sender.isSelected {
            stopTime = Date()
            timer?.invalidate()
        } else {
            startTime = Date()
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (t) in
                let interval = DateInterval(start: self.startTime ?? Date() , end: Date()).duration
                let formatter = DateComponentsFormatter()
                formatter.allowedUnits = [.hour, .minute, .second]
                formatter.unitsStyle = .positional
                formatter.zeroFormattingBehavior = .pad
                let str = formatter.string(from: interval)
                self.timeLabel.text = str
            })
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Date())
        
    }
    
    


}

