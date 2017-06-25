//
//  ViewController.swift
//  Touch ID Project
//
//  Created by Atil Samancioglu on 19/06/2017.
//  Copyright © 2017 Atil Samancioglu. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let authContext = LAContext()
        
        var error: NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Gercekten siz misiniz?", reply: { (success, error) in
                
                if success == true {
                    self.statusLabel.text = "Success!"
                } else {
                    self.statusLabel.text = "No!"
                }
                
            })
            
            
        }
        
        
        
        
    }
    

}

