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
        guard let controller = secondViewController else { return }
        present(controller, animated: true, completion: nil)
    }
    
    private var secondViewController: SecondViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return nil }
        controller.delegate = self
        controller.modalTransitionStyle = .crossDissolve
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    deinit { print("deinit \(self)") }
}

extension ViewController: SecondViewControllerDelegate {
    func viewControllerDidDismiss(vc: SecondViewController, randomNumber: UInt32) {
        randomNumberLabel.text = String(randomNumber)
    }
}
