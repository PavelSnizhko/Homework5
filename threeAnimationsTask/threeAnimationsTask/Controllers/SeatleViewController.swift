//
//  SeatleView.swift
//  coreAnimation
//
//  Created by Павел Снижко on 02.02.2021.
//

import UIKit

class SeatleViewController: UIViewController {

    private var seatleImage = UIImageView(image: UIImage(named: "seattle"))
    private var fierworkView = FireworkView()
    private var gradientView = GradientView()
    
    override func loadView() {
        super.loadView()
        setUI()
    }
    
    
   func setUI() {
    gradientView.colors = [UIColor.black.cgColor, UIColor.blue.cgColor]
        view.addSubview(gradientView)
        view.addSubview(seatleImage)
        view.addSubview(fierworkView)
        fierworkView.frame = view.bounds
        setupConstraints()
   }
    
    func setupConstraints() {
        seatleImage.translatesAutoresizingMaskIntoConstraints = false
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        fierworkView.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
            gradientView.topAnchor.constraint(equalTo: view.topAnchor),
            gradientView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            gradientView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            gradientView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            seatleImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            seatleImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            seatleImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            seatleImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4)
        ])
    }
    
    

}
