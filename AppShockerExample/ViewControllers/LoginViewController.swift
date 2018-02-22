//
//  LoginViewController.swift
//  AppShockerExample
//
//  Created by Nitin Khurana on 20/02/18.
//  Copyright © 2018 Nitin Khurana. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let user = "nitin"
    let pass = "password"
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func login(_ sender: UIButton) {
    
        if userName.text == user && password.text == pass{
            label.textColor = UIColor.green
            label.text = "Login successfull!"
            password.resignFirstResponder()
            userName.resignFirstResponder()
        }
        else{
            label.textColor = UIColor.red
            label.text = "Credentials not correct"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
