//
//  ViewController.swift
//  TempConventer
//
//  Created by olga.krjuckova on 31/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var convertedTempLabel: UILabel!
    @IBOutlet weak var tempSegmentControl: UISegmentedControl!
    @IBOutlet weak var tempSlider: UISlider!{
        didSet{
            //max and min value may be set as
            tempSlider.maximumValue = 100
            tempSlider.minimumValue = 0
            tempSlider.value = 0
            
            
        }
    }
    
    //Created var for passing by segue
    var valueToPass:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        convertedTempLabel.text = "32 ºF"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: Any) {
        print("tempSlider :", tempSlider.value)
        
        updateTempLabelForSlider(value: tempSlider.value)
    }
    
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        updateTempLabelForSlider(value: tempSlider.value)
        
    }
    
    func updateTempLabelForSlider(value : Float){
        let celsiusTemp = Int(value)
        celsiusLabel.text = "\(celsiusTemp) ºC"
        
        var convertedTemperString = ""
        
        switch tempSegmentControl.selectedSegmentIndex{
        case 0:
            let fahrenheitTempString = String(format : "%.2F",  convertTempFrom(celsius: celsiusTemp).fahrenheit)
            convertedTemperString = fahrenheitTempString + " ºF"

        default:
            
            let kelvinTempString = String(format : "%.2F",  convertTempFrom(celsius: celsiusTemp).kelvin)
        convertedTemperString = kelvinTempString + " ºK"
        
        }
        // Label update
        convertedTempLabel.text = convertedTemperString
        
          valueToPass = convertedTemperString
        
    }
    
    func convertTempFrom(celsius : Int) -> (fahrenheit : Double, kelvin : Double)
    {
    let fahrenheit = (Double(celsius) * 9 / 5) + 32
        let kelvin = (Double(celsius)) + 273.15
        
    
    return (fahrenheit, kelvin)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "InfoViewController" {
            
            //infoLabel.text = "View Controller segue for InfoViewController set propertly"
        }
        if segue.destination is InfoViewController{
                let vc = segue.destination as! InfoViewController
            vc.myTextLabel = ("Calculated value from TempConverter is\n\(valueToPass)")
        }
    
}
}

