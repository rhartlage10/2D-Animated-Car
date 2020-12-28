//
//  RTireAnimation.swift
//  Project02-RonniHartlage
//
//  Created by Ronni Hartlage on 11/13/20.
//  Copyright © 2020 Ronni Hartlage. All rights reserved.
//

import UIKit

// rotating ovals for car tires
class TireAnimationView : UIView {
    
    var rotation = CGFloat((0))
    
    @objc func doAnimationStep(_ : Any?) {
        rotation += 0.1
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath.init(ovalIn: bounds)
        UIColor.black.setFill()
        
        var transform = CGAffineTransform.init(translationX: 0.5 * bounds.width, y: 0.5 * bounds.height)
        transform = transform.rotated(by: rotation)
        transform = transform.translatedBy(x: -0.5 * bounds.width, y: -0.5 * bounds.height)
        
        path.apply(transform)
        path.fill()
        self.perform(#selector(TireAnimationView.doAnimationStep(_:)), with: nil, afterDelay: 1.0/180.0)
       
    }
    
}
