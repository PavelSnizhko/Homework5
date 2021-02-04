//
//  SnowParticalView.swift
//  coreAnimation
//
//  Created by Павел Снижко on 01.02.2021.
//

import UIKit

class SnowParticalView: UIView {

    override class var layerClass: AnyClass {
        return CAEmitterLayer.self
    }
    
    
    override func layoutSubviews() {
        setEmitter()
    }
    
    func setEmitter() {
        let emitter = self.layer as! CAEmitterLayer
        emitter.masksToBounds = true
        emitter.emitterCells = getEmiterCells(with: "snow")
        emitter.emitterShape = .line
        emitter.emitterPosition = CGPoint(x: frame.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: frame.width, height: 1)
    }
    
    func getEmiterCells(with imageName: String) -> [CAEmitterCell] {
        var cells: [CAEmitterCell] = []
        cells.append(makeEmitterCell(with: imageName, birthRate: 5, velocity: 100, scale: 0.4))
        cells.append(makeEmitterCell(with: imageName, birthRate: 5, velocity: 80, scale: 0.3))
        cells.append(makeEmitterCell(with: imageName, birthRate: 5, velocity: 70, scale: 0.2))
        return cells
    }
    
    func makeEmitterCell(with imageName: String, birthRate: Float,  velocity: CGFloat, scale: CGFloat) -> CAEmitterCell {
        let newCell = CAEmitterCell()
        newCell.contents = UIImage(named: imageName)?.cgImage
        newCell.birthRate = birthRate
        newCell.lifetime = 30
        newCell.velocity = velocity
        newCell.emissionLongitude = (180 * (.pi / 180))
        newCell.emissionRange = .pi / 6.0
        newCell.scale = scale
        newCell.scaleRange = newCell.scale / 6.0
        
        return newCell
    }

}
