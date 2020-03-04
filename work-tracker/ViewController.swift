//
//  ViewController.swift
//  work-tracker
//
//  Created by Dmitrii Trifonov on 24.02.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer?
    
    @IBAction func startStopButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        if !sender.isSelected {
            timer?.invalidate()
        } else {
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (t) in
                print(Date())
            })
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Date())
        
    }
    
    


}

