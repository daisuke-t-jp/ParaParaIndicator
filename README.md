# ParaParaIndicator

## Overview

`ParaParaIndicator` is flip animation indicator.  
You can using like a `UIActivityIndicator`.


## Installation

### Carthage

```
github "daisuke-t-jp/ParaParaIndicator"
```

### SwiftPackageManager

```swift
dependencies: [
    .package(url: "https://github.com/daisuke-t-jp/ParaParaIndicator.git", .upToNextMajor(from: "1.0.0"))
]
```

## Demo

[Demo](https://github.com/daisuke-t-jp/ParaParaIndicator/tree/master/ParaParaIndicatorDemo)

<img src="https://raw.githubusercontent.com/daisuke-t-jp/ParaParaIndicator/master/demo.gif" width=300px>


## Usage

```swift
import ParaParaIndicator


class ViewController: UIViewController {
    
    let paraparaIndicator = ParaParaIndicator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Images for flipping 
        paraparaIndicator.images = [
            UIImage(named: "camel")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "deer")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "elephant")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "giraffe")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "kangaroo")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "mouse")!.withRenderingMode(.alwaysTemplate),
            UIImage(named: "rhino")!.withRenderingMode(.alwaysTemplate),
        ]
        
        
        // Indicator frame
        paraparaIndicator.frame.size.width = 100
        paraparaIndicator.frame.size.height = 100     
        paraparaIndicator.center = self.view.center
        
        // Tint color
        paraparaIndicator.tintColor = .cyan
        
        // Flip interval
        paraparaIndicator.timeInterval = 0.3
        
        // Hide when stopped
        paraparaIndicator.hidesWhenStopped = true
        
        // Start animation
        paraparaIndicator.startAnimating()
        
        // Stop animation
        // paraparaIndicator.stopAnimating()
        
        self.view.addSubview(paraparaIndicator)
    }
    
}
```
