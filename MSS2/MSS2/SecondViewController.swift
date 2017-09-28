//
//  SecondViewController.swift
//  MSS2
//
//  Created by Phil Tseng on 9/26/17.
//  Copyright © 2017 Metal Toad. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func viewControllerDidDismiss(vc: SecondViewController, randomNumber: UInt32)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var randomNumberLabel: UILabel!
    
    @IBAction func dismissButtonDidPress(_ sender: Any) {
        delegate?.viewControllerDidDismiss(vc: self, randomNumber: randomNumber)
        dismiss(animated: true, completion: nil)
    }
    
    weak var delegate: SecondViewControllerDelegate?
    private var randomNumber: UInt32!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber = arc4random_uniform(99)
        randomNumberLabel.text = String(randomNumber)
    }
    
    deinit { print("deinit \(self)") }
}
