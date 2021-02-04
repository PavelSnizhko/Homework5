//
//  ViewController.swift
//  coreAnimation
//
//  Created by Павел Снижко on 30.01.2021.
//

import UIKit


final class SnowViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Make it snow", for: .normal)
        button.layer.cornerRadius = 6
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let snowingView = SnowParticalView()
    private let skyGradient = GradientView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()

    }

    private func setUI() {
        skyGradient.colors = [UIColor(red: 0.1, green: 0.25, blue: 0.5, alpha: 1).cgColor, UIColor(red: 0.75, green: 0.8, blue: 0.9, alpha: 1).cgColor]
        view.addSubview(skyGradient)
        skyGradient.frame = view.bounds
        view.addSubview(snowingView)
        snowingView.frame = view.bounds
        snowingView.isHidden = true
        view.addSubview(button)
        setConstraints()
    }
    

    private func setConstraints() {
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            button.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    @objc func buttonAction(sender: UIButton!) {
        snowingView.isHidden.toggle()
        changeButtonState()
    }
    
    private func changeButtonState() {
        if button.titleLabel?.text == "Make it snow" {
            button.setTitle("Make it stop", for: .normal)
            button.setTitleColor(UIColor.red, for: .normal)
        }
        else {
            button.setTitle("Make it snow", for: .normal)
            button.setTitleColor(UIColor.blue, for: .normal)
        }
    }

}

