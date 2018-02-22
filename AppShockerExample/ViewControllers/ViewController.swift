//
//  ViewController.swift
//  AppShockerExample
//
//  Created by Nitin Khurana on 20/02/18.
//  Copyright © 2018 Nitin Khurana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var a = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonMethod(_ sender: UIButton)
    {
        label.text = textField.text
        textField.resignFirstResponder()
    }
    
}

