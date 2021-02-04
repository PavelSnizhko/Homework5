//
//  ViewController.swift
//  singleAnimationTask
//
//  Created by Павел Снижко on 04.02.2021.
//

import UIKit





class ViewController: UIViewController {
    @IBOutlet weak var viewForAnimation: CircleAnimationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
    }

    

    @IBAction func pressStartAnimation(_ sender: Any) {
        viewForAnimation.updateAnimation()
        print("pressed")
    }
    

    @IBAction func pressStopAnimation(_ sender: Any) {
        viewForAnimation.stopAnimationView()
    }
    
}

