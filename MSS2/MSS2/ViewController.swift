//
//  ViewController.swift
//  MSS2
//
//  Created by Phil Tseng on 9/26/17.
//  Copyright © 2017 Metal Toad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    
    @IBAction func pushSecondVCButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        controller.delegate = self
        controller.modalTransitionStyle = .crossDissolve
        present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First VC"
    }
}

extension ViewController: SecondViewControllerDelegate {
    func viewControllerDidDismiss(vc: SecondViewController, randomNumber: UInt32) {
        randomNumberLabel.text = String(randomNumber)
    }
}
