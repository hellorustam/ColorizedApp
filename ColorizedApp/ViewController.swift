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
        redLabel.text = String(Int(redSliderProperty.value))
        greenLabel.text = String(Int(greenSliderProperty.value))
        blueLabel.text = String(Int(blueSliderProperty.value))
        
        rectangleBlock.backgroundColor = UIColor(
            red: CGFloat(Int(redSliderProperty.value)) / 255.0,
            green: CGFloat(Int(greenSliderProperty.value)) / 255.0,
            blue: CGFloat(Int(blueSliderProperty.value)) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    // MARK: - IBActions
    @IBAction func redSlider() {
        redLabel.text = String(Int(redSliderProperty.value))
    }
    
    @IBAction func greenSlider() {
        greenLabel.text = String(Int(greenSliderProperty.value))
    }
    
    @IBAction func blueSlider() {
        blueLabel.text = String(Int(blueSliderProperty.value))
    }
}

