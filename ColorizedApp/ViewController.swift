//
//  ViewController.swift
//  ColorizedApp
//
//  Created by l.s.vard on 11.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var mainView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 15
        setupSlider()
        sliderAction()
    }
    
    // MARK: - IBActions
    @IBAction func sliderAction() {
        redLabel.text = String(format: "Red: %.2f", redSlider.value)
        greenLabel.text = String(format: "Green: %.2F", greenSlider.value)
        blueLabel.text = String(format: "Blue: %.2F", blueSlider.value)
        changeViewColor()
    }
    
    // MARK: - Private Methods
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func changeViewColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

