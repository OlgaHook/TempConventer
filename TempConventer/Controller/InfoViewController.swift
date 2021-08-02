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
    
  

    @IBAction func closeInfoButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = myTextLabel
    }
    

 
    // MARK: - Navigation

    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "InfoViewController" {
            
            //infoLabel.text = "View Controller segue for InfoViewController set propertly"
        }
        if segue.destination is InfoViewController{
                let vc = segue.destination as? InfoViewController
                vc?.myTextLabel = "View Controller segue for InfoViewController set propertly"
            }
            }
    */
    //Pass the selected object to the new view controller.
    }



