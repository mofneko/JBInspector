//
//  ViewController.swift
//  JBInspectorExample
//
//  Created by Yusuke Arakawa on 2018/12/31.
//  Copyright © 2018 Nekolaboratory. All rights reserved.
//

import UIKit
import JBInspector

class ViewController: UIViewController {

    @IBOutlet weak var isJailBroken: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if JBInspector.isJailbreak() {
            isJailBroken.text = "isJailBroken"
        } else {
            isJailBroken.text = "isJailed"

        }
    }


}

