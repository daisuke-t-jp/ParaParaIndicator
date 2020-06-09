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

    let paraparaIndicator = ParaParaIndicator()

    override func viewDidLoad() {
        super.viewDidLoad()
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
        paraparaIndicator.tintColor = .brown
        paraparaIndicator.timeInterval = 0.3
        
        paraparaIndicator.startAnimating()
        paraparaIndicator.layer.borderWidth = 2
        paraparaIndicator.layer.borderColor = UIColor.brown.cgColor
        paraparaIndicator.layer.cornerRadius = 20
        paraparaIndicator.clipsToBounds = true
        
        self.view.addSubview(paraparaIndicator)
    }
    
}

