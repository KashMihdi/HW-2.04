//
//  ViewController.swift
//  HW 2.03
//
//  Created by Kasharin Mikhail on 25.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var colorFieldView: UIView!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    
    @IBOutlet weak var redSliderValue: UISlider!
    @IBOutlet weak var greenSliderValue: UISlider!
    @IBOutlet weak var blueSliderValue: UISlider!
    
    
    @IBAction func changedSlidersValue(_ sender: UISlider) {
        setColorViews(sender: sender)
    }
    
    private func setColorViews(sender: UISlider) {
        switch sender.tag {
        case 0:
            redLabelValue.text = String(format: "%.2f", sender.value)
            colorFieldView.backgroundColor = .init(
                red: CGFloat(sender.value),
                green: CGFloat(greenSliderValue.value),
                blue: CGFloat(blueSliderValue.value),
                alpha: 1
            )
        case 1:
            greenLabelValue.text = String(format: "%.2f", sender.value)
            colorFieldView.backgroundColor = .init(
                red: CGFloat(redSliderValue.value),
                green: CGFloat(sender.value),
                blue: CGFloat(blueSliderValue.value),
                alpha: 1
            )
        default:
            blueLabelValue.text = String(format: "%.2f", sender.value)
            colorFieldView.backgroundColor = .init(
                red: CGFloat(redSliderValue.value),
                green: CGFloat(greenSliderValue.value),
                blue: CGFloat(sender.value),
                alpha: 1
            )
        }
    }

}
