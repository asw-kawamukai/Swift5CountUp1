//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by ASW Kawamukai on 2020/06/04.
//  Copyright © 2020 ASW Kawamukai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "0"
    }

    @IBAction func plusButton(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
        
        if count >= 10 {
            changewTextColor()
        }
    }
    
    @IBAction func minusButton(_ sender: Any) {
        count = count - 1
        countLabel.text = String(count)
        
        if count <= 0 {
            resetColor()
        }
    }
    
    func changewTextColor() {
        countLabel.textColor = .yellow
        
    }
    func resetColor() {
        countLabel.textColor = .white
    }
}

