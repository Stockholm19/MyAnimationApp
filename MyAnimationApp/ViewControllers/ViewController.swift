//
//  ViewController.swift
//  MyAnimationApp
//
//  Created by Роман Пшеничников on 14.12.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: SpringLabel!
    
    private var animation = Animation.randomAnimation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    @IBAction func animationButtonPressed(_ sender: UIButton) {
        // Удаляем старые анимации
        animationLabel.layer.removeAllAnimations()
        animationView.layer.removeAllAnimations()
        
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
            
            animationView.animation = animation.name
            animationView.curve = animation.curve
            animationView.duration = animation.duration
            animationView.force = animation.force
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.randomAnimation
            sender.setTitle("Run \(animation.name)", for: .normal)
        }
    }
    
}

