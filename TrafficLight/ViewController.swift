//
//  ViewController.swift
//  TrafficLight
//
//  Created by Николай Тунин on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var button: UIButton!

    var value = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius =
            redLight.frame.width / 2
        orangeLight.layer.cornerRadius =
            orangeLight.frame.width / 2
        greenLight.layer.cornerRadius =
            greenLight.frame.width / 2

        button.layer.cornerRadius = 5

        redLight.backgroundColor = #colorLiteral(red: 0.9179362655, green: 0, blue: 0, alpha: 1)
        orangeLight.backgroundColor = #colorLiteral(red: 0.902739346, green: 0.41187644, blue: 0, alpha: 1)
        greenLight.backgroundColor = #colorLiteral(red: 0, green: 0.8573638201, blue: 0, alpha: 1)

        redLight.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3

    }

    @IBAction func buttonClick(_ sender: Any) {
        button.setTitle("NEXT", for: .normal)
        value += 1

        if value == 1 {
            redLight.alpha = 1
        }

        if value == 2 {
            redLight.alpha = 0.3
            orangeLight.alpha = 1
        }

        if value == 3 {
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
        }

        if value == 4 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
            value = 1
        }

    }

}

