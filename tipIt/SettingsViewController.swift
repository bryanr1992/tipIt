//
//  SettingsViewController.swift
//  tipIt
//
//  Created by Bryan Rivas on 9/19/19.
//  Copyright © 2019 Bryan Rivas. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var customTipField: UITextField!
    @IBOutlet weak var customSplitField: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        customTipField?.becomeFirstResponder()
        customTipField.text = "%\(UserDefaults.standard.integer(forKey: "Percent"))"
        customSplitField.text = String(UserDefaults.standard.integer(forKey: "MySplit"))
    }
    @IBAction func saveOnEdit(_ sender: Any) {
        
        if customTipField.text!.count < 1{
            customTipField.text = "%"
        }
        
        let startPos = customTipField.position(from: customTipField.beginningOfDocument, offset: 1)
        let range = customTipField.textRange(from: startPos!, to: customTipField.endOfDocument)
        
        defaults.set(Int(customTipField.text(in: range!)!) ?? 0, forKey: "Percent")
        defaults.set(Int(customSplitField.text!) ?? 0, forKey: "MySplit")
        
        defaults.synchronize()
    }
    

}
