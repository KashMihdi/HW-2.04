//
//  ViewController.swift
//  HW 2.03
//
//  Created by Kasharin Mikhail on 25.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewField: UIView!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    
    @IBOutlet weak var redSliderValue: UISlider!
    @IBOutlet weak var greenSliderValue: UISlider!
    @IBOutlet weak var blueSliderValue: UISlider!
    
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        setColorView(sender: sender)
    }
    
    private func setColorView(sender: UISlider) {
        switch sender.tag {
        case 1:
            redLabelValue.text =  sender.value.formatted(.number.precision(.fractionLength(2)))
            viewField.backgroundColor = .init(
                red: CGFloat(sender.value),
                green: CGFloat(greenSliderValue.value),
                blue: CGFloat(blueSliderValue.value),
                alpha: 1
            )
        case 2:
            greenLabelValue.text = String(format: "%.2f", sender.value)
            viewField.backgroundColor = .init(
                red: CGFloat(redSliderValue.value),
                green: CGFloat(sender.value),
                blue: CGFloat(blueSliderValue.value),
                alpha: 1
            )
        default:
            blueLabelValue.text = String(format: "%.2f", sender.value)
            viewField.backgroundColor = .init(
                red: CGFloat(redSliderValue.value),
                green: CGFloat(greenSliderValue.value),
                blue: CGFloat(sender.value),
                alpha: 1
            )
        }
    }
    
    
    
}
