//
//  InfoViewController.swift
//  LogIn
//
//  Created by Матвей Авдеев on 12.05.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    private let user = User.getUser()
    
    private let gradient = Color.addColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabel.text = user.person.aboutMe
        
        view.addGradientLayer(
            oneColor: gradient.color.blueColor,
            twoColor: gradient.color.pinkColor,
            thirdColor: gradient.color.yellowColor
        )
        
    }
    

  

}
