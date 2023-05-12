//
//  HelloViewController.swift
//  testApp
//
//  Created by Матвей Авдеев on 12.05.2023.
//

import UIKit

final class HelloViewController: UIViewController {
    
    @IBOutlet var hellowLabel: UILabel!
    
    private let user = User.getUser()
    
    private let gradient = Color.addColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addGradientLayer(
            oneColor: gradient.color.pinkColor,
            twoColor: gradient.color.yellowColor,
            thirdColor: gradient.color.blueColor
        )

        hellowLabel.text = "Hellow, \(user.person.name)"
    }
    
}






