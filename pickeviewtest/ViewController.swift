//
//  ViewController.swift
//  pickeviewtest
//
//  Created by Revo Tech on 1/27/17.
//  Copyright © 2017 Revo Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate{

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var info_label: UILabel!
    
    var fruit = ["Pick a fruit","Apples","Oranges","Lemons", "Limes", "BlueBarries"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named:"fruits.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(_ pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return fruit.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return fruit[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let fruitSelected = fruit[row]
        
        switch (fruitSelected){
            
        case "Apples":
            imageView.image = UIImage(named: "apples.jpg")
            info_label.text = "These apples are red."
            
        case "Oranges":
            imageView.image = UIImage(named: "oranges.jpg")
            info_label.text = "These oranges are orange."
            
        case "Lemons":
            imageView.image = UIImage(named: "lemons.jpg")
            info_label.text = "These lemons are yellow."
            
        case "Limes":
            imageView.image = UIImage(named: "limes.jpg")
            info_label.text = "These limes are green."
            
        case "Blueberries":
            imageView.image = UIImage(named: "blueberries.jpg")
            info_label.text = "These blueberries are blue."
            
        default:
            imageView.image = UIImage(named: "fruits.jpg")
            info_label.text = "Please enjoy some fruit."
            
        }// end of switch statment
        
    }
}

