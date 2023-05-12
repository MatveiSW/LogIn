//
//  Extension + UIView.swift
//  testApp
//
//  Created by Матвей Авдеев on 12.05.2023.
//

import UIKit

extension UIView {
    
    func addGradientLayer(oneColor: UIColor, twoColor: UIColor, thirdColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [oneColor.cgColor, twoColor.cgColor, thirdColor.cgColor]
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}
