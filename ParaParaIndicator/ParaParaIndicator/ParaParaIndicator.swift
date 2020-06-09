//
//  ParaParaIndicator.swift
//  ParaParaIndicator
//
//  Created by Daisuke TONOSAKI on 2020/06/09.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import UIKit

public class ParaParaIndicator: UIView {
    
    // MARK: - Constant, Enum
    
    
    // MARK: - Property
    public var images: [UIImage] = []
    public var imageTintColor: UIColor?
    public var hidesWhenStopped: Bool = true
    public var timeInterval: TimeInterval = 0.3 {
        didSet {
            guard self.isAnimating else {
                return
            }
            
            startTimer(timeInterval: self.timeInterval)
        }
    }
    
    private var currentIndex = 0
    private let imageView = UIImageView()
    private var timer: Timer?
    
    
    
    // MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        initialize()
    }
    
    deinit {
        stopTimer()
    }
    
    private func initialize() {
        imageView.frame.origin.x = 0
        imageView.frame.origin.y = 0
        imageView.frame.size.width = self.frame.size.width
        imageView.frame.size.height = self.frame.size.height
        
        self.addSubview(imageView)
    }
    
}


// MARK: - Life cycle
extension ParaParaIndicator {
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.frame.origin.x = 0
        imageView.frame.origin.y = 0
        imageView.frame.size.width = self.frame.size.width
        imageView.frame.size.height = self.frame.size.height
    }
    
}


// MARK: - Timer
extension ParaParaIndicator {
    
    private func startTimer(timeInterval: TimeInterval) {
        stopTimer()
        
        self.timer = Timer.scheduledTimer(timeInterval: self.timeInterval,
                                          target: self,
                                          selector: #selector(timerFunc),
                                          userInfo: nil,
                                          repeats: true)
    }
    
    private func stopTimer() {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    @objc
    private func timerFunc() {
        self.currentIndex += 1
        if self.currentIndex >= self.images.count {
            self.currentIndex = 0
        }
        
        imageView.image = self.images[self.currentIndex]
    }
    
}


// MARK: - Control
extension ParaParaIndicator {
    
    public var isAnimating: Bool {
        guard let timer = self.timer else {
            return false
        }
        
        return timer.isValid
    }
    
    public func startAnimating() {
        guard !isAnimating else {
            return
        }
        
        self.isHidden = false
        
        self.currentIndex = 0
        startTimer(timeInterval: self.timeInterval)
        
        imageView.image = self.images[self.currentIndex]
        
        guard let imageTintColor = self.imageTintColor else {
            return
        }
        
        imageView.tintColor = imageTintColor
    }
    
    public func stopAnimating() {
        stopTimer()
        
        guard hidesWhenStopped else {
            return
        }
        
        self.isHidden = true
    }

}

