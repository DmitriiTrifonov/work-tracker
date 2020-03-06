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
    let today = Date()
    @IBOutlet var timeLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    @IBAction func startStopButton(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        if !sender.isSelected {
            stopTime = Date()
            timer?.invalidate()
        } else {
            self.timeLabel.text = "00:00:00"
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
        self.title = "JOBICS"
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        let str = formatter.string(from: today)
        self.dateLabel.text = str
        
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 21)!]
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(test))
        navigationItem.leftBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 21)!], for: .normal)
        navigationItem.leftBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 21)!], for: .selected)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(test))
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 21)!], for: .normal)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 21)!], for: .selected)
    }
    
    @objc func test() {
        print("It works")
    }
    
    


}

