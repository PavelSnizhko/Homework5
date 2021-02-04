//
//  SeattleView.swift
//  coreAnimation
//
//  Created by Павел Снижко on 01.02.2021.
//

import UIKit


// View that is used as a layer animation
class FireworkView: UIView {
    
    override class var layerClass: AnyClass {
        CAEmitterLayer.self
    }
    
    override func layoutSubviews() {
        let emitterLayer = self.layer as! CAEmitterLayer
        emitterLayer.masksToBounds = true
        emitterLayer.emitterShape = .point
        emitterLayer.emitterCells = [generateEmitterCell(imageName: "bokeh")]
        emitterLayer.emitterPosition = CGPoint(x: frame.width / 2, y: frame.height - 100)
        emitterLayer.emitterSize = CGSize(width: 0.0, height: 0.0)
        emitterLayer.emitterMode = .outline
        emitterLayer.renderMode = .additive
    }
    
    
    
    
    func generateEmitterCell(imageName: String) -> CAEmitterCell {
        let cell = CAEmitterCell()
        cell.contents = UIImage(named: imageName)?.cgImage
        cell.name = "Main"
        cell.birthRate = 1.0
        cell.lifetime = 2.5
        cell.velocity = 100.0
        cell.velocityRange = 20.0
        cell.yAcceleration = -100.0
        cell.emissionLatitude = 50.0 * (.pi / 180.0)
        cell.emissionLongitude = -90.0 * (.pi / 180.0)
        cell.emissionRange = 45.0 * (.pi / 180.0)
        cell.spin = 10.0 * (.pi / 180.0)
        cell.scale = 0.0
        cell.color = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        cell.redRange = 0.9
        cell.greenRange = 0.9
        cell.blueRange = 0.9
        cell.emitterCells = [ generateTrailCell(imageName: "star"), generateExplosionCell(imageName: "spark") ]
        return cell
    }
    
    
    
 
    func generateExplosionCell(imageName: String) -> CAEmitterCell {
        let explosionCell = CAEmitterCell()
        explosionCell.contents = UIImage(named: imageName)?.cgImage
        explosionCell.name = "Explosion"
        explosionCell.birthRate = 20000.0
        explosionCell.lifetime = 15.0
        explosionCell.beginTime = 1.8
        explosionCell.duration = 0.05
        explosionCell.velocity = 120.0
        explosionCell.yAcceleration = 80.0
        explosionCell.emissionRange = 360.0 * (.pi / 180.0)
        explosionCell.spin = 114.6 * (.pi / 180.0)
        explosionCell.scale = 0.3
        explosionCell.scaleSpeed = 0.09
        explosionCell.alphaSpeed = -0.7
        explosionCell.color = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        explosionCell.blueRange = 0.0
        
        return explosionCell
    }


    func generateTrailCell(imageName: String) -> CAEmitterCell{
        let sparksCell = CAEmitterCell()
        sparksCell.contents =  UIImage(named: imageName)?.cgImage
        sparksCell.name = "Trail"
        sparksCell.birthRate = 60.0
        sparksCell.lifetime = 0.5
        sparksCell.beginTime = 0.02
        sparksCell.duration = 1.7
        sparksCell.velocity = 80.0
        sparksCell.velocityRange = 100.0
        sparksCell.xAcceleration = 100.0
        sparksCell.yAcceleration = 350.0
        sparksCell.emissionLongitude = -60.0 * (.pi / 180.0)
        sparksCell.emissionRange = 20 * (.pi / 180.0)
        sparksCell.scale = 0.8
        sparksCell.scaleSpeed = 0.13
        sparksCell.alphaSpeed = -0.7
        sparksCell.color = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        sparksCell.blueRange = 0.0
       
        return sparksCell
    }
    
}
