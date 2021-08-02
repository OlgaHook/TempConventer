//
//  CurrencyViewController.swift
//  TempConventer
//
//  Created by olga.krjuckova on 02/08/2021.
//

import UIKit

class CurrencyViewController: UIViewController {
    
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var currencySlider: UISlider!
    var convertedUdsString = ""
    
    @IBAction func closeCurrencyVCButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "0 Usd"
        
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func currencySliderValuechanged(_ sender: Any) {
        print(currencySlider.value)
        
        updateCurrencyLabelForSlider(value: currencySlider.value)
        
        
        //update label for slider
    }
    func updateCurrencyLabelForSlider(value : Float){
        let eur = Int(value)
        euroLabel.text = "\(eur) Eur"
        let usd = (Float(eur) / 0.7 )
        usdLabel.text = "\(usd) USD"
        
    }
        
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



