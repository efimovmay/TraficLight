//
//  ViewController.swift
//  TraficLight
//
//  Created by Aleksey on 29.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private enum CurrentLight{
        case red, orange, green
    }
    private var currentLight = CurrentLight.green
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var orangeLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actionButton.setTitle("START", for: .normal)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redLight.layer.cornerRadius = redLight.bounds.size.width * 0.5
        orangeLight.layer.cornerRadius = orangeLight.bounds.size.width * 0.5
        greenLight.layer.cornerRadius = greenLight.bounds.size.width * 0.5
    }
    
    
    @IBAction func changeLight() {

        if actionButton.currentTitle == "START" {
            actionButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = 0.3
            orangeLight.alpha = 1
            currentLight.self = .orange
        case .orange:
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
            currentLight.self = .green
        case .green:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            currentLight.self = .red
        }
        
    }
    
}
