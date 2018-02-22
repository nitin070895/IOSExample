//
//  HelperFunctions.swift
//  AppShockerExample
//
//  Created by Nitin Khurana on 21/02/18.
//  Copyright © 2018 Nitin Khurana. All rights reserved.
//

import Foundation

class MyClass {
    
    public var myVar = 1
    
    private static var staticVar = 1
    
    public static func add(_ a: Int, _ b:Int)-> Int{
        return (a + b)
    }
    
    public func getNames(_ firstName: String, _ lastName: String)-> (String, String){
        return (firstName, lastName)
    }
    
    public func main(){
        
        let names = getNames("Nitin", "Khurana")
        let f_name = names.0
        let l_name = names.1
        
    }
}

protocol MyProtocol {
    
    func abstractMethod()
}

public class Animal {
    
    var name = "default"
    var age = 0
    
    internal var internalVar = 1
    fileprivate var fileprivateVar = 1

    
    init(_ name: String, _ age:Int) {
        
        self.name = name
        self.age = age
    }
    
    private func privateFunc(){
        
    }
    
    public func publicFunc(){
        
    }
    
    func getDetails() -> String {
        return "Details are : \(name), \(age)"
    }
}

class Dog : Animal{
    
    func makeSound() -> String{
        fileprivateVar = 2
        return "Bow bow"
    }
    
}

class Cat: Animal {
    
    func makeSound() -> String {
        return "Mew meow"
    }
}

var animal:Animal = Animal("Hello", 5)
var dog:Dog = Dog("Doggy", 8)
var doggy:Animal = Animal("MyDog", 5)









