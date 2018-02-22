//
//  FormExampleViewController.swift
//  AppShockerExample
//
//  Created by Nitin Khurana on 20/02/18.
//  Copyright © 2018 Nitin Khurana. All rights reserved.
//

import UIKit

let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
let fileName = "/UserForm.txt"
let filePath = documentsPath + fileName

class FormExampleViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveFile(_ sender: Any) {
     
        let name = self.name.text
        let l_name = lastName.text
        let age = self.age.text
        let data = "The user info is: \(name ?? "a"), \(l_name ?? "a"), \(age ?? "a")"
        
        let fileManager = FileManager.default
        
        if(!fileManager.fileExists(atPath: filePath)){
            
            do{
                try data.write(toFile:filePath, atomically:true, encoding:String.Encoding.utf8)
                print("File saved successfully")
                
            }
            catch {
                print("Error saving file")
            }
            
        }
        else{
            print("The file was already there")
            do{
                try data.write(toFile:filePath, atomically:true, encoding:String.Encoding.utf8)
                print("File saved successfully")
                
            }
            catch {
                print("Error saving file")
            }
        }
        
        self.name.resignFirstResponder()
        self.lastName.resignFirstResponder()
        self.age.resignFirstResponder()
    }
    
    @IBAction func loadFile(_ sender: Any) {
    
        var data:String?
        
        do{
            data = try String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
        }
        catch{
           print("Can't read file")
        }
        
        self.label.text = data
        
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
