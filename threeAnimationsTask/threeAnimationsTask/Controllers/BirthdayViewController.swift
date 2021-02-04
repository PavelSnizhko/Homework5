//
//  BirthdayViewController.swift
//  coreAnimation
//
//  Created by Павел Снижко on 01.02.2021.
//

import UIKit

class BirthdayViewController: UIViewController {
    private let birtdayGradient = GradientView()
    private let confetiView = ConfetiParticalView()
    private let congratsLabel = UILabel()
    private let cakeImage = UIImageView(image: UIImage(named: "birthday-cake"))

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
    func setUI() {
        birtdayGradient.colors = [UIColor(red: 0.40, green:0.90, blue:0.95, alpha:1.0).cgColor, UIColor.white.cgColor]
        birtdayGradient.frame = view.bounds
        congratsLabel.text = "Happy Birthday !"
        congratsLabel.textColor = .blue
        congratsLabel.textAlignment = .center
        congratsLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
        
        view.addSubview(birtdayGradient)
        view.addSubview(congratsLabel)
        view.addSubview(cakeImage)
        view.addSubview(confetiView)
        confetiView.frame = view.bounds
        setConstraints()
    }
    
    
    
    func setConstraints() {
        congratsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            congratsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            congratsLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            congratsLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
        cakeImage.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cakeImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            cakeImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            cakeImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            cakeImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
        ])
        
    }
}
