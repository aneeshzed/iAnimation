//
//  iAnimate.swift
//  iAnimation
//
//  Created by Aneesh on 6/19/18.
//  Copyright © 2018 Aneesh. All rights reserved.
//

import Foundation   
import UIKit

enum iAnimationStyle {
    case pulsate
    case flash
}

extension CALayer{
    
    func iAnimateWith(style:iAnimationStyle,duration:CFTimeInterval ,callBack:@escaping ((Bool?) -> Void)) {
        switch style {
        case .pulsate:pulsate(duration:duration)
            break
        case .flash:flash(duration:duration)
            break
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            callBack(true)
        }
        
    }
    //Layer Pulse animation
    func pulsate(duration:CFTimeInterval) {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = duration
        pulse.fromValue = 0.90
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 3
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        self.add(pulse, forKey: "pulse")
        }
    //Laayer Flash Animation
    func flash(duration:CFTimeInterval) {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = duration
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        self.add(flash, forKey: nil)
    }
}
