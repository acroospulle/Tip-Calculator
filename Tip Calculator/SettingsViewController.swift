//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Ashni Croospulle on 12/9/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DarkModeSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClickDarkMode(_ sender: UISwitch) {
        if #available(ios 13.0, *) {
            let appDelegate  = UIApplication.shared.windows.first
            if sender.isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
                return
            }
            appDelegate?.overrideUserInterfaceStyle = .light
        } else {
            
        }
    }
    
}
