//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Rustam Samiev on 22.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var rectangleBlock: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSliderProperty: UISlider!
    @IBOutlet var greenSliderProperty: UISlider!
    @IBOutlet var blueSliderProperty: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rectangleBlock.layer.cornerRadius = 16
        
        redLabel.text = setStringValue(from: redSliderProperty)
        greenLabel.text = setStringValue(from: greenSliderProperty)
        blueLabel.text = setStringValue(from: blueSliderProperty)
        
        setBackgroundColor()
    }

    // MARK: - IBActions
    @IBAction func setSlider(_ sender: UISlider) {
        setBackgroundColor()
        
        switch sender {
        case redSliderProperty:
            redLabel.text = setStringValue(from: redSliderProperty)
        case greenSliderProperty:
            greenLabel.text = setStringValue(from: greenSliderProperty)
        default:
            blueLabel.text = setStringValue(from: blueSliderProperty)
        }
    }
    
    // MARK: - Private func
    private func setBackgroundColor() {
        rectangleBlock.backgroundColor = UIColor(
            red: CGFloat(redSliderProperty.value) / 255,
            green: CGFloat(greenSliderProperty.value) / 255,
            blue: CGFloat(blueSliderProperty.value) / 255,
            alpha: CGFloat(1.0)
        )
    }
    
    private func setStringValue(from slider: UISlider) -> String {
        String(format: "%.0f", slider.value)
    }
}

