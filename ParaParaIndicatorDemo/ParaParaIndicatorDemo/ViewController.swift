//
//  ViewController.swift
//  ParaParaIndicatorDemo
//
//  Created by Daisuke TONOSAKI on 2020/06/09.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import UIKit

import ParaParaIndicator

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    
    let paraparaIndicator = ParaParaIndicator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 0.1
        slider.maximumValue = 1
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        paraparaIndicator.images = [
            UIImage(named: "camel")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "deer")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "elephant")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "giraffe")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "kangaroo")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "mouse")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "rhino")!.withRenderingMode(.alwaysTemplate),
        ]
        
        paraparaIndicator.frame.size.width = 100
        paraparaIndicator.frame.size.height = 100
        paraparaIndicator.center = self.view.center
        paraparaIndicator.tintColor = .cyan
        paraparaIndicator.timeInterval = 0.3
        
        paraparaIndicator.startAnimating()
        
        self.view.addSubview(paraparaIndicator)
        
        slider.value = Float(paraparaIndicator.timeInterval)
    }
    
    @IBAction func valueChangedHideWhenStop(sender: UISwitch) {
        paraparaIndicator.hidesWhenStopped = sender.isOn
    }
    
    @IBAction func valueChangedTimeInterval(sender: UISlider) {
        paraparaIndicator.timeInterval = TimeInterval(slider.value)
    }
    
    @IBAction func buttonTappedStart(sender: UIButton) {
        paraparaIndicator.startAnimating()
    }
    
    @IBAction func buttonTappedStop(sender: UIButton) {
        paraparaIndicator.stopAnimating()
    }
    
}

