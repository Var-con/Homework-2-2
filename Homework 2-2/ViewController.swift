//
//  ViewController.swift
//  Homework 2-2
//
//  Created by Станислав Климов on 23.05.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var colorFieldView: UIView!
    @IBOutlet var redColorValueLabel: UILabel!
    @IBOutlet var blueColorValueLabel: UILabel!
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var redColorSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Slider color
        redColorSliderOutlet.tintColor = .red
        greenSliderOutlet.tintColor = .green
        blueSliderOutlet.tintColor = .blue
        
        //Slider starting value
        redColorSliderOutlet.value = 0.05
        greenSliderOutlet.value = 0.27
        blueSliderOutlet.value = 0.49
        
        //Value label at start
        redColorValueLabel.text = String(redColorSliderOutlet.value)
        greenColorValueLabel.text = String(greenSliderOutlet.value)
        blueColorValueLabel.text = String(blueSliderOutlet.value)
        
        //View starting color
        let redSliderValue = CGFloat(redColorSliderOutlet.value)
        let greenSliderValue = CGFloat(greenSliderOutlet.value)
        let blueSliderValue = CGFloat(blueSliderOutlet.value)
        let viewColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        colorFieldView.backgroundColor = viewColor
        redColorValueLabel.text = String(format: "%.2f", redColorSliderOutlet.value)
        greenColorValueLabel.text = String(format: "%.2f", greenSliderOutlet.value)
        blueColorValueLabel.text = String(format: "%.2f", blueSliderOutlet.value)
    }
    
    //MARK: -Main function
    //Function that realize changing background color of View
    func colorChanging() {
        let redSliderValue = CGFloat(redColorSliderOutlet.value)
        let greenSliderValue = CGFloat(greenSliderOutlet.value)
        let blueSliderValue = CGFloat(blueSliderOutlet.value)
        let viewColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        colorFieldView.backgroundColor = viewColor
        redColorValueLabel.text = String(format: "%.2f", redColorSliderOutlet.value)
        greenColorValueLabel.text = String(format: "%.2f", greenSliderOutlet.value)
        blueColorValueLabel.text = String(format: "%.2f", blueSliderOutlet.value)
    }
    
    //MARK: IBActions
 
    @IBAction func redSlider() {
       colorChanging()
    }
    @IBAction func greenSliderAction() {
        colorChanging()
    }
    @IBAction func blueSliderAction() {
        colorChanging()
    }
}


    


