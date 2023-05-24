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
    
    @IBOutlet var copyButton: UIButton!
    
    private var redValue: Float {
        round(redSliderProperty.value)
    }
    private var greenValue: Float {
        round(greenSliderProperty.value)
    }
    private var blueValue: Float {
        round(blueSliderProperty.value)
    }
    
    
    private func setBackgroundColor() {
        rectangleBlock.backgroundColor = UIColor(
            red: CGFloat(redValue) / 255.0,
            green: CGFloat(greenValue) / 255.0,
            blue: CGFloat(blueValue) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rectangleBlock.layer.cornerRadius = 16
        redLabel.text = String(redValue)
        greenLabel.text = String(greenValue)
        blueLabel.text = String(blueValue)
        
        copyButton.titleLabel?.text = ""
        
        setBackgroundColor()
    }

    // MARK: - IBActions
    @IBAction func redSlider() {
        redLabel.text = String(redValue)
        setBackgroundColor()
        copyButton.titleLabel?.text = ""
    }
    
    @IBAction func greenSlider() {
        greenLabel.text = String(greenValue)
        setBackgroundColor()
        copyButton.titleLabel?.text = ""
    }
    
    @IBAction func blueSlider() {
        blueLabel.text = String(blueValue)
        setBackgroundColor()
        copyButton.titleLabel?.text = ""
    }
    
    @IBAction func copyColorRectangle() {
        copyButton.titleLabel?.text = "Copied HEX color"
        
        UIPasteboard.general.string = "#" + String(format:"%02X", redValue) +
        String(format:"%02X", greenValue) +
        String(format:"%02X", blueValue)
    }
}

