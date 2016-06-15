//: Playground - noun: a place where people can play

var numberOfOranges = 1
var numberOfApples = 5

if numberOfApples > numberOfOranges {
    print("You have more apples than oranges")
}


1 != 2
1 == 2
1 < 2
1 > 2
1 <= 2
3 >= 3

var money = 20
var burgerPrice = 10

if money >= burgerPrice {
    
    print("Pay for burger")
    money -= burgerPrice
    
} else {
    
    print("Wash dishes")
}

if money > 0 {
    
    print("Buy dessert")
}

var age = 23
var myMoney = 25000

if age >= 18 {
    
    if money >=  20000 {
        
        print("Buying a new car today")
    
    } else { print("Sorry, not enough money")
        
    }
} else {
    
    print("Sorry you are not old enough")
}

var myAge = 18

if myAge >= 13 {
    
    if age <= 19 {
        
    print("Still a teenager")
    }
}

var yourAge = 123

if yourAge <= 0 || yourAge >= 100 {
    
    print("This age is probably incorrect")
}

var numberOfSisters = 1
var numberOfBrothers = 2

if numberOfSisters > 0 || numberOfBrothers > 0 {
    
    print("I have siblings")
}

true && true
true && false
false && true
false && false

true || true
true || false
false || true
false || false

var youngPersonsAge = 18
if !(age >=  13 && age <= 19){
    
    print("Not a teenager")
}
