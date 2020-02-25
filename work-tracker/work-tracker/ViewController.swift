//
//  ViewController.swift
//  work-tracker
//
//  Created by Dmitrii Trifonov on 24.02.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startTime = Date()
    var isButtonPressed = false
    var endTime = Date()
    
    @IBAction func startButton(_ sender: UIButton) {
        let title = !isButtonPressed ? "Stop" : "Start"
        if !isButtonPressed {
            startTime = Date()
        }
        if isButtonPressed {
            endTime = Date()
        }
        isButtonPressed = !isButtonPressed
        buttonStartStop.setTitle(title, for: .normal)
    }
    
    @IBOutlet var buttonStartStop: UIButton!
    
    
    @IBOutlet var TimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let start = Date()
        _ = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showTime), userInfo: nil, repeats: true)
    }
    
    @objc func showTime() -> String {
        
        let interval = isButtonPressed ? DateInterval(start: startTime, end: Date()).duration : DateInterval(start: startTime, end: endTime).duration
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        let str = formatter.string(from: interval)
        TimeLabel.text = str
        return str ?? "Error"
    }


}

