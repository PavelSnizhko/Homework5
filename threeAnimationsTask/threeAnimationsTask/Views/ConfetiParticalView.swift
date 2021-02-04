//
//  ConfetiParticalView.swift
//  coreAnimation
//
//  Created by Павел Снижко on 01.02.2021.
//

import UIKit

class ConfetiParticalView: UIView {
    private var colors: [UIColor] = [.red, .blue, .green]
    
    override class var layerClass: AnyClass {
        CAEmitterLayer.self
    }
    
    override func layoutSubviews() {
        setEmitter()
    }
    
    func setEmitter() {
        let emitter = layer as! CAEmitterLayer
        emitter.masksToBounds = true
        emitter.emitterCells = [ generateEmitterCell(with: "confetti", birthRate: 3, velocity: 150, scale: 0.7, color:.red ),
            generateEmitterCell(with: "confetti", birthRate: 2, velocity: 130, scale: 0.7, color: .blue),
            generateEmitterCell(with: "confetti", birthRate: 1, velocity: 135, scale: 0.7, color: .green)
        ]
        emitter.emitterShape = .line
        emitter.emitterPosition = CGPoint(x: frame.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: frame.width, height: 1)

    }
    
      
    
    func generateEmitterCell(with imageName: String, birthRate: Float,  velocity: CGFloat, scale: CGFloat, color: UIColor) -> CAEmitterCell {
        let newCell = CAEmitterCell()
        newCell.contents = UIImage(named: imageName)?.cgImage
        newCell.birthRate = birthRate
        newCell.lifetime = 30
        newCell.velocity = velocity
        newCell.emissionLongitude = (180 * (.pi / 180))
        newCell.emissionRange = .pi / 6.0
        newCell.scale = scale
        newCell.scaleRange = newCell.scale / 4
        newCell.color = color.cgColor
        newCell.spinRange = 10;
        
        return newCell
    }
}


