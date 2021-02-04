//
//  ViewController.swift
//  singleAnimationTask
//
//  Created by Павел Снижко on 04.02.2021.
//

import UIKit


class ViewController: UIViewController {
    // MARK: - IBOutlets

    @IBOutlet weak var viewForAnimation: CircleAnimationView!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
    }

    // MARK: - IBActions

    @IBAction func pressStartAnimation(_ sender: Any) {
        viewForAnimation.updateAnimation()
    }
    

    @IBAction func pressStopAnimation(_ sender: Any) {
        viewForAnimation.stopAnimationView()
    }
    
}

