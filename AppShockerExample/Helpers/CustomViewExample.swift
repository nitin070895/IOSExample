//
//  CustomViewExample.swift
//  AppShockerExample
//
//  Created by Nitin Khurana on 22/02/18.
//  Copyright © 2018 Nitin Khurana. All rights reserved.
//

import UIKit

var  v = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 200, height:200)))
var b = UIButton(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height:32)))

func main(){
    setButton(button: b, "Button")
}

func setButton(button: UIButton, _ title:String){
    button.setTitle(title, for: UIControlState.normal)
    button.setTitleColor(UIColor.red, for: UIControlState.normal)
}
