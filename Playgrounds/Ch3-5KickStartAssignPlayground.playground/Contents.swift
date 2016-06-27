//: Playground - noun: a place where people can play

import UIKit

//Chapter 3

//Section 1 - Inferring Type
var str = "Hello, playground"

let person: String = "Swift Programmer"
var greeting: String = "Hello,"
greeting = "Hi there, "
greeting + person

// Section 2 - Let
let shouldBeRed: Bool
shouldBeRed = true

let stringWithoutValue: String

if shouldBeRed {
    stringWithoutValue = "red"
} else {
    stringWithoutValue = "blue"
}

// Section 5 - Numeric Types
let simpleProduct = 5 * 3.4
let five = 5
let threePointFour = 3.4
let fiveAsDouble = Double(5)
let product = threePointFour * fiveAsDouble

//Section 6 - Optionals
let image  = UIImage(named: "Kickstart.jpg")
let imageView = UIImageView()
if image != nil {
    let validImage = image!
    imageView.image = validImage
} else {
    print("There is no image named Kickstart.jpg")
}

imageView.image

//Section 7 - Higher Order Functions

let friend = "Daniel"

func hello(name:String) -> String {
    let greeting  = "Hello, \(name)!"
    return greeting
}

hello (friend)

func bonjour(name: String) -> String {
    let greeting = "Bonjour, \(name)!"
    return greeting
}

bonjour (friend)

//func createGreetingWithSalutation(salutation: String) -> (String) -> String {
//    func greetingFunction(name: String) -> String {
//    }
//    return greetingFunction
//    
//}
//
//func greetingFunction(name: String) -> String {
//    let greeting = "\(salutation), \(name)!"
//    return greetingFunction
//}

func useGreeting(greetingFor: (String) -> String, forPeopleWithName people: String...) -> String {
    var tempGreeting = ""
    for person in people {
        tempGreeting += greetingFor(person) + "\n"
    }
    
    return greeting
    
}

//Section 8 - Type Alias

typealias USDollars = Double
typealias Count = Int
typealias RevenueCalculator = (Count) ->  USDollars
//func revenueForCopies(numberSold: Count) -> USDollars {
//    return Double(numberSold * 99 * 70 /100)/100
//}
//revenueForCopies(6)

func totalRevenue(calculator: RevenueCalculator, copies: Count...) -> USDollars {
    var runningTotal = 0.00
    for copy in copies {
        runningTotal += calculator(copy)
    }
    return runningTotal
}
//totalRevenue(revenueForCopies, copies: 6, 3, 1)

/** The return value is the revenue in US Dollars. */

//Chapter 4

//Section 1 - One Type

let numbers = [0, 1, 2]
let three = numbers[1] + numbers[2]

let badNumbers = [0, 1, 2, 3, "Hello"]


//Section 2 - Create Arrays

let people = ["Swift Programmer", "Obj-C Old Timer"]
let morePeople: [String]
morePeople = ["Swift 2 Adopter", "Protocal Pro"]
let salutations = ["Hello", "Bonjour", "Hey"]

//Section 3 - Modifying Arrays

var coffeeDrinks = [String]()
coffeeDrinks.count

var drinkSizes = Array(count: 3, repeatedValue: "Really Big")
drinkSizes [1] = "Big"
drinkSizes.append("Huge")
drinkSizes.insert("Moderate", atIndex: 1)
drinkSizes[0...1] = ["Medium"]
drinkSizes[2...2] = ["Bigger", "Jumbo"]
drinkSizes += ["Huger"]
drinkSizes = drinkSizes + ["Hugest"]
drinkSizes.removeAtIndex(2)
drinkSizes[2...3] = []
drinkSizes.removeAll(keepCapacity: true)
if !drinkSizes.isEmpty {
    drinkSizes.removeLast()
}
drinkSizes.count
drinkSizes

//Section 4 - Enumerating Arrays

let coffeeDrinks2 = ["Drip", "Espresso", "Americano", "Cappuccino"]

for index in 0 ..< coffeeDrinks2.count{
    print(coffeeDrinks2[index])
}

for kindOfDrink in coffeeDrinks {
    print(kindOfDrink)
}

for (index, kindOfDrink) in coffeeDrinks.enumerate() {
    print("(\(index + 1))" + kindOfDrink)
}

//Section 5 - Value and Reference Types

var x = 7
var y = x
x = 5
print("x = \(x), y = \(y)")


var xField = UITextField()
xField.text = "x"
var yField = xField
print("x = \(xField.text), y = \(yField.text!)")
yField.text = "y"
print("x = \(xField.text!), y = \(yField.text)")

var xNumbers = [0, 1, 2, 3]
var yNumbers = xNumbers
xNumbers[0] = 100
print("x = \(xNumbers), y =\(yNumbers)")

//Section 6 - Dictionaries
let numbers2 = ["one":1, "two":2, "three":3]
var moreNumbers:[String:Int]
//let numberKeys = numbers.keys
//let numberValues = numbers.values
//for number in numbers.keys{
//    print("\(number) : \(numbers[numbers])")
//}
//for number in numbers.keys {
//    print("\(number) : \(numbers[number]!)")
//}

//Section 7 - Modify Dictionaries
var numbers3 = [String:Int]()
numbers3.count
numbers3["one"] = 3
numbers3["one"] = 1
numbers3["two"] = 2
numbers3.removeValueForKey("too")
numbers

//Section 8 - Optionals and Dictionaryies
let numbers4 = ["one":1, "two":2]
let one = numbers4["one"]
let four = numbers4["four"]

//if let validNumber = <key goes here> {
//    print("Number has value:\(validNumber).")
//    
//} else {
//    print("Number is nil")
//}

//Section 10 - Sets
var odds = Set<Int>()
for i in 1.stride(through: 10, by: 2) {
    odds.insert(i)
}
odds.insert(7)
odds.contains(7)
//odds.intersectInPlace(primes)
odds.count
odds

//Chapter 5 - Flexible Functions
//Section 1 - Function Parameters
 var two = 2
func double (var input: Int) {
    input
    input = input * 2
    
}

double(two)
two

//Section 2 - Reference Types

var textField = UITextField()
textField.text = "Hello"
textField.text

func modifyField (var field: UITextField) {
    field = UITextField()
    field.text = "Goodbye"
    field.text
}

modifyField(textField)
textField.text

//Section 4 - Return  Values
//var two = 2
//func double(input: Int) -> Int {
//    return input * 2
//}
//
//double(two)
//two
//two = double(two)
//two

//Section 5 - Extensions

extension Int {
    func double() -> Int {
        return self * 2
    }
}

//Section 6 - Higher Order Functions 

//let two = 2
//func double(input: Int) -> Int {
//    return input * 2
//}
//
//let four = double(two)

func modify(input: Int, byApplying f:(Int) -> Int) -> Int {
    let result = f(input)
    return result
    }

//Section 7 - Closure Expressions

//func modify(input: Int, byApplying f:(Int) -> Int) -> Int {
//    let result = f(input)
//}
//
//let four = modify(2, byApplying: {(input: Int) -> Int in
//return input * 2
//})
//
//let six = modify(3){input: Int) - > Int in
//return input * 2
//
//let eight = modify(4){input in return input * 2}
//
//let ten = modify(5){input in input * 2}
//
//    let ten = modify (5){input in input * 2}
//
//    let twelve = modify(6){$0 *2}

//Section 8 - Generics

func modify<T>(input: T, byApplying f: (T) -> T) -> T {
    
    return f(input)
}

let two2 = modify(1) {input in input * 2}
let three2 = modify(1.5){input in input * 2.0}
let greeting2 = modify("Hello"){input in input + ", World"}

//Section 9 - Transforming Arrays 
func transform<T, U>(input: [T], byApplying f: (T) -> U) -> [U] {
    var transformedArray = [U]()
    for element in input {
        transformedArray.append(f(element))
    }
    return transformedArray
}

let numberOfCopies = [9, 27 ,34, 55]
let isBiggerThanTen = transform(numberOfCopies){$0 > 10}
//let revenue = transfrom(numberOfCopies){Double($0) * 0.99 * 0.70}

//Section 10 - Understanding Map()

extension Array {
    func transform<U>(f:(Element) -> U) -> [U] {
        var transformedArray = [U]()
        for element in self {
            transformedArray.append(f(element))
        }
        return transformedArray
    }
}

let numberOfCopies2 = [9, 12, 7, 15, 20]
let isBiggerThanTen2 = numberOfCopies.transform{$0 > 10}
let revenue = numberOfCopies.transform{Double($0) * 0.99 * 0.70}
let isBiggerThanTenMap = numberOfCopies.map{$0 > 10}
let revenueMap = numberOfCopies.map{Double($0) * 0.99 * 0.70}