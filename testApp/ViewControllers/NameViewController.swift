//
//  NameViewController.swift
//  LogIn
//
//  Created by Матвей Авдеев on 12.05.2023.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var secondNamelabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var typeOfActivityLabel: UILabel!
    
    private let user = User.getUser()
    private let gradient = Color.addColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addGradientLayer(
            oneColor: gradient.color.yellowColor,
            twoColor: gradient.color.blueColor,
            thirdColor: gradient.color.pinkColor
        )
        
        nameLabel.text = user.person.name
        secondNamelabel.text = user.person.secondName
        ageLabel.text = user.person.age
        typeOfActivityLabel.text = user.person.typeOfActivity
      
    }
    
}
