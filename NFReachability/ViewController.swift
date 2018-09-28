//
//  ViewController.swift
//  NFReachability
//
//  Created by MD AL MAMUN (LCL) on 9/27/18.
//  Copyright © 2018 Loblaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    var monitor: NFReachability!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        monitor = NFReachability()
        monitor.observeReachability { [weak self] status in
            self?.statusLabel.text = "\(status)"
            print(status)
        }
    }


}

