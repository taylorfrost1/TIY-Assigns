//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let person:String = "Swift Programmer"

let simpleProduct = 5 * 3.4



let image = UIImage(named: "Kickstart.jpg")



let imageView = UIImageView()

if image != nil{
    
    let validImage = image!
    imageView.image = validImage
    
} else {
    print("There is no image named Kickstart.jpg")

}

imageView.image