//
//  GradientView.swift
//  coreAnimation
//
//  Created by Павел Снижко on 01.02.2021.
//

import UIKit

class GradientView: UIView {
    var colors: [CGColor] = []
    var locations: [NSNumber]?
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        (layer as! CAGradientLayer).colors = colors
        if let locations = locations {
            (layer as! CAGradientLayer).locations = locations
        }
    }
}
