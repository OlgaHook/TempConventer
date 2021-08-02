//
//  InfoViewController.swift
//  TempConventer
//
//  Created by olga.krjuckova on 31/07/2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    var myTextLabel: String = ""
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var openSettingsButton: UIButton!
    
    @IBOutlet weak var changeThemeButton: UIButton!
    var isOn = false
    
    @IBAction func closeInfoButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = myTextLabel
    }
    
    
    @IBAction func OpenSettings(_ sender: Any) {
        openSettings()    }
  
    func openSettings() {
            guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            
            if UIApplication.shared.canOpenURL(settingURL){
                
                UIApplication.shared.open(settingURL, options: [:]) { success in
                    print("success :", success)
                }
            }
        
        
    // MARK: - Navigation

    
  
    //Pass the selected object to the new view controller.
    }

    @IBAction func changeThemeButtonTapped(_ sender: Any) {
        if isOn {
        self.isOn = false
        
        self.changeThemeButton.setTitleColor(UIColor.label, for: .normal)
        self.view.backgroundColor = .gray
        }else{
            self.isOn = true
            self.changeThemeButton.setTitleColor(UIColor.label, for: .normal)
            self.view.backgroundColor = .white
            
        }
    }
    
    
    
}

