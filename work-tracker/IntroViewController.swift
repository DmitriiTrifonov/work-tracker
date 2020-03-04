//
//  IntroViewController.swift
//  work-tracker
//
//  Created by Dmitrii Trifonov on 04.03.2020.
//  Copyright © 2020 Dmitrii Trifonov. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(segueToSignIn), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view.
    }
    

    @objc func segueToSignIn() {
        self.performSegue(withIdentifier: "MainUISegue", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
