//
//  ViewController.swift
//  LLSMSCodeViewController
//
//  Created by Ruris on 01/20/2021.
//  Copyright (c) 2021 Ruris. All rights reserved.
//

import UIKit
import LLSMSCodeViewController

class ViewController: LLSMSCodeViewController {
    
    override var smsCodeLenght: Int { 6 }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        
        mobile = "15237996899"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fire()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func didSMSCodeChanged(code: String) {
        print(#function, code)
    }
}

