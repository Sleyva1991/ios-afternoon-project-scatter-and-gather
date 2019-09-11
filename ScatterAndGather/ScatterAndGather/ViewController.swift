//
//  ViewController.swift
//  ScatterAndGather
//
//  Created by Steven Leyva on 9/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isScattered: Bool = false
    
    @IBOutlet weak var lLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var aaLabel: UILabel!
    @IBOutlet weak var lambdaLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func toggleButtonPressed(_ sender: Any) {
        fadeOut()
        scatterL(view: lLabel)
        scatterA(view: aLabel)
        scatterM(view: mLabel)
        scatterB(view: bLabel)
        scatterD(view: dLabel)
        scatterAA(view: aaLabel)
        
        
    }
    
    func fadeOut() {
        if self.lambdaLogo.alpha == 0.0 {
            
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.lambdaLogo.alpha = 1.0
            })
        } else {
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseIn, animations: {
                self.lambdaLogo.alpha = 0.0
            })
        }
    }
    
    func scatterL(view: UIView) {
        let x = (CGFloat.random(in: 1...200))
        let y = (CGFloat.random(in: 1...200))
        let colorL: UIColor = .random
        let textColor: UIColor = .random
        let random_angle = (CGFloat.random(in: 1...100))
        
       
        UIView.animate(withDuration: 1.0) {
            self.lLabel.transform = CGAffineTransform(translationX: x, y: y)
            view.backgroundColor = colorL
            self.lLabel.textColor = textColor
            self.lLabel.transform = CGAffineTransform(rotationAngle: random_angle)
        }
        
        
    }
    
    func scatterA(view: UIView) {
        let x = (CGFloat.random(in: 1...200))
        let y = (CGFloat.random(in: 1...200))
        let colorA: UIColor = .random
        let textColor: UIColor = .random
        let random_angle = (CGFloat.random(in: 1...100))
        
        UIView.animate(withDuration: 1.0) {
            self.aLabel.transform = CGAffineTransform(translationX: x, y: y)
            view.backgroundColor = colorA
            self.aLabel.textColor = textColor
            self.aLabel.transform = CGAffineTransform(rotationAngle: random_angle)

        }
    }
    
    func scatterM(view:UIView) {
        let x = (CGFloat.random(in: 1...200))
        let y = (CGFloat.random(in: 1...200))
        let colorM: UIColor = .random
        let textColor: UIColor = .random
        let random_angle = (CGFloat.random(in: 1...100))
        
        UIView.animate(withDuration: 1.0) {
        self.mLabel.transform = CGAffineTransform(translationX: x, y: y)
        view.backgroundColor = colorM
        self.mLabel.textColor = textColor
        self.mLabel.transform = CGAffineTransform(rotationAngle: random_angle)
            
        }
    }
    
    func scatterB(view: UIView) {
        let x = (CGFloat.random(in: 1...200))
        let y = (CGFloat.random(in: 1...200))
        let colorB: UIColor = .random
        let textColor: UIColor = .random
        let random_angle = (CGFloat.random(in: 1...200))
        
        UIView.animate(withDuration: 1.0) {
        self.bLabel.transform = CGAffineTransform(translationX: x, y: y)
        view.backgroundColor = colorB
        self.bLabel.textColor = textColor
        self.bLabel.transform = CGAffineTransform(rotationAngle: random_angle)
            
        }
    }
    
    func scatterD(view: UIView) {
        let x = (CGFloat.random(in: 1...200))
        let y = (CGFloat.random(in: 1...200))
        let colorD: UIColor = .random
        let textColor: UIColor = .random
        let random_angle = (CGFloat.random(in: 1...100))
        
        UIView.animate(withDuration: 1.0) {
            self.dLabel.transform = CGAffineTransform(translationX: x, y: y)
            view.backgroundColor = colorD
            self.dLabel.textColor = textColor
            self.dLabel.transform = CGAffineTransform(rotationAngle: random_angle)
        }
    }
    
    func scatterAA(view: UIView) {
        let x = (CGFloat.random(in: 1...150.9))
        let y = (CGFloat.random(in: 1...75.7))
        let colorAA: UIColor = .random
        let textColor: UIColor = .random
        let random_angle = (CGFloat.random(in: 1...100))
        
        UIView.animate(withDuration: 1.0) {
            self.aaLabel.transform = CGAffineTransform(translationX: x, y: y)
            view.backgroundColor = colorAA
            self.aaLabel.textColor = textColor
            self.aaLabel.transform = CGAffineTransform(rotationAngle: random_angle)
        }
    }
    
}

extension UIColor {
    static var random: UIColor {
        return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
    }
}
