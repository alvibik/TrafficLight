//
//  ViewController.swift
//  TrafficLight
//
//  Created by albik on 25.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!

    @IBOutlet var startButton: UIButton!
    
    let lightOff: CGFloat = 0.3
    let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 80
        yellowView.layer.cornerRadius = 80
        greenView.layer.cornerRadius = 80
        
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        if redView.alpha == yellowView.alpha {
            greenView.alpha = lightOff
            redView.alpha = lightOn
        } else if redView.alpha == lightOn {
            redView.alpha = lightOff
            yellowView.alpha = lightOn
        } else if yellowView.alpha == lightOn {
            yellowView.alpha = lightOff
            greenView.alpha = lightOn
        } else {
            greenView.alpha = lightOff
        }
    }
}
