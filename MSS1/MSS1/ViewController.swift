//
//  ViewController.swift
//  MSS1
//
//  Created by Phil Tseng on 9/20/17.
//  Copyright © 2017 Metal Toad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldButton: UIButton!
    @IBAction func hellowWorldButtonDidPress(_ sender: Any) {
        let alert = UIAlertController(title: "Welcome to my First App!", message: "Hello World!", preferredStyle: .alert)
        let confirmationAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(confirmationAction)
        present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Frame: \(helloWorldButton.frame)")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { _ in }, completion: { _ in
          print("Frame: \(self.helloWorldButton.frame)")
        })
    }
}
