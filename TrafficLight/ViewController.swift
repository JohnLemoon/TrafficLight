//
//  ViewController.swift
//  TrafficLight
//
//  Created by Николай Тунин on 18.08.2021.
//

import UIKit

enum eTrafficLight {
   case red, orange, green
}

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var button: UIButton!

    private var positionTrafficLight = eTrafficLight.red
    private var value: CGFloat = 0
    private var alpha: CGFloat = 0.3
    private var noneAlpha: CGFloat = 1

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

        redLight.alpha = alpha
        orangeLight.alpha = alpha
        greenLight.alpha = alpha

    }

    @IBAction func buttonClick(_ sender: Any) {
        if button.setTitle("START", for: .normal) ==  button.setTitle("START", for: .normal) {

            button.setTitle("NEXT", for: .normal)

        }

        switch positionTrafficLight {
            case .red:
                greenLight.alpha = alpha
                redLight.alpha = noneAlpha
                positionTrafficLight = .orange
            case .orange:
                redLight.alpha = alpha
                orangeLight.alpha = noneAlpha
                positionTrafficLight = .green
            case .green:
                orangeLight.alpha = alpha
                greenLight.alpha = noneAlpha
                positionTrafficLight = .red

        }



    }

}

