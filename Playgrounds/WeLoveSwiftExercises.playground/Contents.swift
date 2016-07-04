//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1.1
//var a = 2
//var b = 3
//var c = a + b

//1.2
//var secondsInAYear = 60*60*24*365

//1.3
//var height = 1920
//var width = 1080
//var numberOfPixels = height*width

//1.4
//let a = 10
//let b = 6
//let sum = a + b
//let difference = a - b

//1.5
//var width = 8
//var heigth = 12
//var x = 2
//var y = 3
//var perimeter = width+heigth+x+y

//1.6
//var a = 1
//var b = 2
//var temp = a
//a = b
//b = temp

//1.7
//var a = 123
//a % 120

//1.8
//var dogsAge = 50
//dogsAge/7

//1.9
//var x = 3
//var y = 2
//var bobsAge = 12
//var alice = 15*2-3

//1.10
//var myApples = 17
//var bobWants5ApplesFor3Oranges = 5
//var bobWillGive3OrangesPer5Apples = 3
//myApples/bobWants5ApplesFor3Oranges*bobWillGive3OrangesPer5Apples
//myApples%5

//1.11
//var studentsOfTheClass = 80
//var numberOfBoys = 20
//var numberOfGirls = 60
//var boyPercentage = numberOfBoys * 100/studentsOfTheClass
//print(boyPercentage)
//var girlPercentage = numberOfGirls * 100/studentsOfTheClass
//print(girlPercentage)

//2.1
//var a = 11
//var b = 22
//if a > b {
//    print(a)
//} else {
//    print(b)
//}

//2.2
//var number = 2
//if number % 2 == 0 {
//print("\(number) is a even number")
//} else {
//    print("\(number) is a odd number")
//}

//2.3
//var a = 12
//var b = 3
//
//if a%b == 0 {
//    print("\(a) is divisable by \(b)")
//} else {
//    print ("\(a) is not divisable by \(b)")
//}

//2.4
//var a = 2
//var b = 3
//var c = 2
//
//if a == c || a == b || c == b  {
//    print ("At least two of the variables are the same")
//    
//} else {
//    print("Not two variables are the same")
//    
//}

//2.5
//var baconAge = 6
//var eggAge = 12
//
//if baconAge <= 7 && eggAge <= 21 {
//    print("Both the eggs and bacon are good to eat")
//} else {
//    print("Either the eggs or the bacon are bad")
//}
//
//if baconAge > 7 {
//    print("Throw out the bacon")
//}
//
//if eggAge > 21 {
//    print("Throw out the eggs")
//}

// 2.6
//let year = 2014
//
//if year % 100 == 0 || year % 4 == 0 {
//    print("Leap year")
//} else {
//    print("Not a leap year")
//}

//2.7
//import Foundation
//var randomNumber = arc4random()
//if randomNumber % 2 == 0 {
//    print("Heads")
//} else {
//    print("Tails")
//}

//2.8
//var a = 5
//var b = 6
//var c = 4
//var d = 3
//
//var min = a
//
//if b < min  {
//    min = b
//}
//
//if c < min {
//    min = c
//}
//
//if d < min {
//   min = d
//}
//
//print(min)

//2.9

//let number = 210
//
//if number % 3 == 0 && number % 5 == 0 && number % 7 == 0 {
//    print("\(number) is divisable by 3, 5, and 7")
//} else {
//    print ("\(number)is not divisable by 3, 5, and 7")
//}

//2.10
//var x = 1
//var y = 2
//var lowX =  1
//var lowY = 1
//var highX = 3
//var highY = 3
//
//if x >= lowX && x <= highX && y >= lowY && y <= highY {
//    
//    print("inside")
//    
//} else {
//    print("outisde")
//}

//2.11
//var hp = 75
//
//if hp > 0 && hp < 20 {
//    
//    hp = 20
//} else if hp % 10 != 0 {
//   hp = hp / 10
//   hp = hp + 1
//   hp = hp * 10
//}
//print(hp)

//3.1
//var a = 2.0
//var b = 5.0
//var sum = a + b
//var average = sum / 2

//3.2
//var finalsGrade = 2.0
//var midtermGrade = 4.0
//var projectGrade = 3.0
//
//print(finalsGrade * 0.5 + midtermGrade * 0.2 + projectGrade * 0.3)

//3.3
//var mealCost: Double = 3.5
//var tip: Int = 25
//var tipCost = mealCost + Double(tip) / 100.0
//var totalCost = mealCost + tipCost

//3.4
//var number = 5.1517
//var newNumber = Int(number * 10)
//var roundedNumber = Double(newNumber)/10.0

//3.5
//var grade1 = 7.0
//var grade2 = 9.0
//var grade3 = 5.0
//var yourGrade = 8.0
//var averageGrade = (grade1 + grade2 + grade3 + yourGrade) / 4
//if yourGrade > averageGrade {
//    print("Above average")
//} else {
//    print("Not above average")
//}

//3.6
//var numberOfFields:Int = 5
//var numberOfYield:Double = 7.5
//var weatherWasGood:Bool = true
//if weatherWasGood == true {
//    var newYield = numberOfYield * 5 * 0.5
//    Double(numberOfFields) * numberOfYield + newYield
//}

//4.1
//var n = 10
//for _ in 1...n {
//    print("I will not skip the fundamentals")
//}

//4.2
//var n = 10
//var count = 1
//
//while count <= n {
//    
//    print(count * count)
//    count = count + 1
//}

//4.3
//var n = 10
//var count = 2
//while count <= n {
//    print(count)
//    count = count * 2
//    
//}

//4.4
//var n = 5
//var left = 1
//var right = n
//while left < right {
//print(left)
//print(right)
//++left
//--right
//}
//
//if left == right {
//    print(left)
//}

//4.5
//var n = 2
//
//for i in 1...n {
//    for i in 1...n{
//        print("", terminator: "")
//    }
//    print("")
//}

//4.6
//var n = 3
//var m = 7
//
//for i  in 1...n {
//    for j in 1...m {
//        print("*", terminator: "")
//    }
//    
//    print("")
//}

//4.7
//var n = 3
//for i in 1...n {
//    for j in 1...n {
//        print("*", terminator: "")
//    }
//    print("")
//}

//4.8
//var n = 3
//for i in 1...n  {
//    for j in 0..<(n-i) {
//        print(" " , terminator: "" )
//    }
//    
//    for j in 1...2*i-1{
//        print("*", terminator: "")
//    }
//    
//    print("")
//}

//4.9
//let n = 4
//
//for i in 1...n {
//    for j in 0..<(n-i) {
//        print(" ", terminator: "")
//    }
//    
//    for j in 1...2*i-1 {
//        print("*", terminator: "")
//    }
//    
//    print("")
//}
//
//if (n>1) {
//    for j in 2...n {
//        var i = n - j + 1
//        for k in 0..<(n-i) {
//            print(" ", terminator: "")
//        }
//        
//        for k in 1...2*i-1 {
//            print("*", terminator: "")
//        }
//        print("")
//    }
//}

//4.10
//let n = 3
//
//for i in 1...n {
//    for _ in 1...2 {
//        for _ in 0..<(n-i) {
//        print(" ", terminator: "")
//    }
//    
//    for _ in 1...2*i-1 {
//        print("**", terminator: "")
//    }
//    
//    print("")
//    }
//
//}

//4.11
//let n = 8
//print("+", terminator: "")
//for _ in 1...n {
//    print("-", terminator: "")
//}
//print("+")
//
//for i in 1...n {
//    print("|", terminator: "")
//    for j in 1...n {
//        if i % 2 == j % 2 {
//            print("#", terminator: "")
//        
//} else {
//            print(" ", terminator: "")
//    
//        }
//}
//print("|")
//
//}
//
//print("+", terminator: "")
//for _ in 1...n {
//    print("-", terminator: "")
//}
//print("+")

//4.12
//var n = 10
//
//var a = 1
//var b = 0
//
//for _ in 1...n {
//    print(a)
//    var tmp = a + b
//    b = a
//    a = tmp
//}

//4.13
//var n = 5
//
//var leapYear = 2016
//
//var cnt = 0
//
//while cnt < n {
//    print(leapYear)
//    ++cnt
//    leapYear += 4
//    if leapYear % 100 == 0 && leapYear % 400 != 0 {
//        leapYear += 4
//    }
//}

//4.14
//var number = 1234
//while number > 0 {
//    print(number % 10, terminator: "")
//    number /= 10
//}

//4.15
//var a = 24
//var b = 18
//
//var maxDiv = a
//
//if b < maxDiv {
//    maxDiv = b
//}
//
//var gcd = 1
//
//for i in 1...maxDiv {
//    if (a % i == 0) && (b % i == 0){
//    gcd = 1
//    }
//}
//
//print(gcd)

//4.16
//var number = 17
//
//var numberOfDivisors = 0
//
//for i in 1...number {
//    if number % 1 == 0 {
//        numberOfDivisors += 1
//    }
//}
//
//if numberOfDivisors == 2 {
//    print("prime")
//} else {
//    print("not prime")
//}

//4.17
//var number = 10
//print("\(number) = ", terminator: "")
//var isFirst = true
//for i in 2...number {
//    if number % 1 == 0 {
//        while (number % i == 0) {
//            number /= i
//            
//            if isFirst {
//                isFirst = false
//            } else {
//                print(" * ", terminator: "")
//            }
//            
//            print(i, terminator: "")
//        }
//    }
//}

//4.18
//var n = 10
//
//print(1)
//
//for i in 2...n{
//    var isFree = true
//    
//    var a = i
//    
//    for j in 2...a {
//        if a % j == 0 {
//            var put = 0
//            while (a % j == 0) {
//                a /= j
//                put += 1
//            }
//            
//            if put > 1 {
//                isFree = false
//            }
//        }
//    }
//    
//    if isFree {
//        print(i)
//    }
//}

//5.1
//var firstName = "Andrei"
//var lastName = "Puni"
//
//var fullName = firstName + " " + lastName

//5.2
//var a = 23
//var b = 14
//var sum = a + b
//var formattedSum = "\(a) + \(b) = \(sum)"

//5.3
//var aString = "Replace the letter e with *"
//
//var replacedString = ""
//
//for character in aString.characters{
//    var char = "\(character)"
//    if char == "e" {
//        replacedString = replacedString + "*"
//    } else {
//        replacedString = replacedString + char
//    }
//    
//}

//5.4
//var aString = "this string has 29 characters"
//var reverse = ""
//
//for character in aString.characters {
//    var asString = "\(character)"
//    reverse = asString + reverse
//}
//
//print(reverse)

//5.5
//let aString = "anutforajaroftuna"
//
//var reverse = ""
//
//for character in aString.characters {
//    var char = "\(character)"
//    reverse = char + reverse
//}
//
//print(aString == reverse)

//5.6
//var problem = "split this string into words on seperate lines"
//var word = ""
//for character in problem.characters {
//    if character == " " {
//        print(word)
//        word = ""
//    } else {
//        word += "\(character)"
//    }
//}
//
//print(word)

//5.7
//var problem = "find the longest word in the problem description"
//problem += ""
//
//var word = ""
//var length = 0
//
//var max = 0
//var longestWord = ""
//
//for character in problem.characters{
//    if character == " " {
//        if length > max {
//            max = length
//            longestWord = word
//        }
//        word = ""
//        length = 0
//    } else {
//        word += "\(character)"
//        length++
//        
//    }
//}
//print(longestWord)

//5.8
//func *(string: String, scalar: Int) -> String {
//    let array = Array(count: scalar, repeatedValue: string)
//    return array.joinWithSeparator("")
//}
//
//var newLine = "\n"
//
//var n = 5
//var m = 10
//
//var line = "*" * m
//line += newLine
//
//var rectangle: String = line * n
//
//print(rectangle)

//6.1
//var listOfNumbers = [1,2, 3, 10, 100]
//var maxVal = listOfNumbers[0]
//for number in listOfNumbers {
//    if maxVal < number {
//        maxVal = number
//    }
//}
//
//print(maxVal)

//6.2
//var listOfNumbers = [1, 2, 3, 10, 100]
//
//for number in listOfNumbers {
//    if number % 2 != 0 {
//        print(number)
//    }
//}

//6.3
//var listOfNumbers = [1, 2, 3, 10, 100]
//var sum = 0
//for number in listOfNumbers {
//    sum += number
//}
//
//print(sum)

//6.4
//var listOfNumbers = [1, 2, 3, 10, 100]
//
//var i = 1
//
//while i < listOfNumbers.count {
//    print(listOfNumbers[i])
//    i += 2
//}

//6.5
//var listOfNumbers = [1, 2, 3, 10, 100, 2]
//var i = listOfNumbers.count - 1
//while i >= 0 {
//    print(listOfNumbers[i])
//    i--
//}

//6.6 
//var listOfNumbers = [1, 2, 3, 10, 100]
//var firstIndex = 0
//var lastIndex = listOfNumbers.count - 1
//while firstIndex < lastIndex {
//    var tmp = listOfNumbers[firstIndex]
//    listOfNumbers[firstIndex] = listOfNumbers[lastIndex]
//    listOfNumbers[lastIndex] = tmp
//    
//    ++firstIndex
//    --lastIndex
//    
//}

//6.7
//var listOfNumbers = [1, 2, 3, 10, 100]
//var nElements = listOfNumbers.count
//
//for fixedIndex in 0..<nElements {
//    for i in fixedIndex+1..<nElements {
//        if listOfNumbers[fixedIndex] < listOfNumbers[i] {
//            var tmp = listOfNumbers[fixedIndex]
//            listOfNumbers[fixedIndex] = listOfNumbers[i]
//            listOfNumbers[i] = tmp
//        }
//    }
//}

//6.8
//var listOfNumbers = [1, 2, 3, 10, 100]
//var x = 10
//var xAppears = false
//for number in listOfNumbers {
//    if number == x {
//        xAppears = true
//    }
//}
//
//if xAppears {
//    print("yes")
//} else {
//    print("no")
//}

//6.9
//var listOfNumbers = [1, 2, 3, 10, 100]
//var otherNumbers = [1, 2, 3, 4, 5, 6]
//
//for otherNumber in otherNumbers {
//    for number in listOfNumbers {
//        if number == otherNumber{
//            print(number)
//            break
//        }
//    }
//}

//6.10
//var listOfNumbers = [1, 2, 3, 10, 100]
//var divisors = [7, 5]
//
//for number in listOfNumbers {
//    for divisor in divisors {
//        if number % divisor == 0 {
//            print(number)
//            break
//        }
//    }
//}

//6.11
//var numbers = [12, 36, 720, 18]
//var maxDiv = numbers[0]
//for number in numbers {
//    if number < maxDiv {
//        maxDiv = number
//    }
//}
//
//var gcd = 1
//
//for divisor in 1...maxDiv {
//    var dividesAll = true
//    for number in numbers {
//        if number % divisor != 0 {
//            dividesAll = false
//            break
//        }
//    }
//    
//    if dividesAll {
//        gcd = divisor
//    }
//}
//print(gcd)

//6.12
//var n = 30
//var fibonacci = [1, 1]
//for i in 2...n - 1 {
//    fibonacci.append(fibonacci[i-1] + fibonacci[i-2])
//}
//
//for number in fibonacci {
//    print(number)
//}

//6.13
//var number = 60
//var divisors: [Int] = []
//for divisor in 1...number {
//    if number % divisor == 0 {
//        divisors.append(divisor)
//    }
//}
//
//for divisor in divisors {
//    print(divisor)
//}

//6.14
//var number = 12345
//var digits: [Int] = []
//while number > 0 {
//    var digit = number % 10
//    digits = [digit] + digits
//    
//    number /= 10
//}
//
//for digit in digits {
//    print(digits)
//}

//6.15
//var listOfNumbers = [1, 2, 3, 1, 2, 10, 100]
//
//var unique: [Int] = []
//
//for number in listOfNumbers {
//    var numberIsNew = true
//    for otherNumber in unique {
//        if number == otherNumber {
//            numberIsNew = false
//            break
//        }
//    }
//    
//    if numberIsNew {
//        unique.append(number)
//    }
//}
//
//for number in unique {
//    print(number)
//}

//7.1
//func min2(a: Int, _ b: Int) -> Int {
//    if a < b {
//        return a
//    } else {
//        return b
//    }
//}

//7.2
//func lastDigit(number: Int) -> Int {
//    return number % 10
//}

//7.3
//func first (N: Int) -> [Int] {
//    var numbers:[Int] = []
//    for number in 1...N {
//        numbers.append(number)
//    }
//    return numbers
//}

//7.4
//import Foundation
//
//func countDown(N: Int) {
//    var i = N
//    while i > 0 {
//        print(i)
//        
//        if i > 1 {
//            sleep(1)
//        }
//        i--
//    }
//    print("GO!")
//}

//7.5
//func divides(a: Int, _ b: Int) -> Bool {
//    return a % b == 0
//}
//func countDivisors(number: Int) -> Int {
//    var cnt = 0
//    for i in 1...number {
//        if divides(number, i) {
//            ++cnt
//        }
//    }
//    return cnt
//}
//
//func isPrime(number: Int) -> Bool {
//    return countDivisors(number) == 2
//}

//7.6
//func printFirstPrimes(count: Int) {
//    var i = 2
//    var printed = 0
//    while printed < count {
//        if isPrime(i) {
//            print(i)
//            ++printed
//        }
//        
//        ++i
//    }
//}

//7.7
//func repeatPrint(message: String, _ count: Int) {
//    for i in 1...count {
//        print(message, terminator: "")
//    }
//    
//    print("")
//}

//7.8
//func reverse(numbers: [Int]) -> [Int] {
//    var reversed: [Int] = []
//    
//    for number in numbers {
//        reversed.insert(number, atIndex: 0)
//    }
//    
//    return reversed
//}

//7.9
//func sum(numbers: [Int]) -> Int {
//    var sum = 0
//    
//    for number in numbers {
//        sum += number
//    }
//    
//    return sum
//}

//7.10
//func parseDigit(digit: String) -> Int {
//    let digits = "0123456789"
//    
//    var result = 0
//    
//    for character in digits.characters {
//        var d = "\(character)"
//        
//        if d == digit {
//            return result
//        }
//        
//        result += 1
//    }
//    
//    return -1
//}

//7.11
//func timeDifference(firstHour firstHour: Int,
//                              firstMinute: Int,
//                              secondHour: Int,
//                              secondMinute: Int) -> Int {
//    var hourDifference = secondHour - firstHour
//    var minuteDifference = secondMinute - firstMinute
//    
//    if minuteDifference < 0 {
//        hourDifference -= 1
//        minuteDifference += 60
//    }
//
//    return hourDifference * 60 + minuteDifference
//}

//7.12
//func verifyParentheses(expression: String) -> Bool {
//    var open = 0
//    var closed = 0
//    for char in expression.characters {
//        var character = "\(char)"
//        if character == "(" {
//            ++open
//        } else {
//            ++closed
//            if closed > open {
//                return false
//            }
//        }
//    }
//    
//    return open == closed
//}

//7.13
//func levelCost(heights heights: [Int], maxJump: Int) -> Int {
//    var totalEnergy = 0
//    var lastHeight = 0
//    
//    for height in heights {
//        if lastHeight == 0 {
//            lastHeight = height
//        } else {
//            var jumpHeight = lastHeight - height
//            if jumpHeight < 0 {
//                jumpHeight = -jumpHeight
//            }
//            
//            if jumpHeight > maxJump {
//                return -1
//            }
//            
//            if jumpHeight == 0 {
//                
//                totalEnergy += 1
//                
//            } else {
//                totalEnergy += 2 * jumpHeight
//            
//        }
//            
//           lastHeight = height
//        }
//    }
//    
//        return totalEnergy
//}

//7.14
//func push(number: Int, inout _ queue: [Int]) {
//    queue.append(number)
//}
//
//func pop(inout queue: [Int]) -> Int? {
//    var result = queue.first
//    
//    if queue.count > 0 {
//        queue.removeAtIndex(0)
//    }
//    
//    return result
//}

//7.15
//func push(number: Int, inout _ stack: [Int]) {
//    stack.append(number)
//}
//
//func top(stack: [Int]) -> Int? {
//    if stack.count == 0 {
//    return nil
//    }
//    
//    return stack[stack.count - 1]
//}
//
//func pop(inout stack: [Int]) -> Int? {
//    var result = top(stack)
//    
//    if stack.count > 0 {
//        stack.removeAtIndex(stack.count - 1)
//    }
//    
//    return result
//}

//8.1







