//
//  Models.swift
//  LogIn
//
//  Created by Матвей Авдеев on 12.05.2023.
//
import UIKit

struct User {
    let logIn: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(logIn: "Matvei", password: "Password", person: Person())
    }
}

struct Person {
        let name = "Matvei"
        let secondName = "Avdeev"
        let age = "20"
        let typeOfActivity = "Studying to be a IOS programmer"
        let aboutMe = "Меня зовут Матвей Авдеев, мне 20 лет. Я живу в Москве и трачу все свое свободное время на обучение программированию. В момент написания этого текста я пока не знаю как его буду использовать, но если вы это читаете, значит я все же разобрался. Думаю нет смысла писать тут целое сочинение, спасибо за внимание!)"
}

struct Color {
    let color: settingColor
    
    static func addColor() -> Color {
        Color(color: settingColor())
    }
}
struct settingColor {
    let pinkColor = UIColor(red: 0.93, green: 0.61, blue: 0.83, alpha: 1.0)
    let yellowColor = UIColor(red: 0.81, green: 0.96, blue: 0.98, alpha: 1.0)
    let blueColor = UIColor(red: 1.0, green: 0.96, blue: 0.75, alpha: 1.0)
}
