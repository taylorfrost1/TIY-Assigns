
func hello() {
    
    print("Hello World")
    
}
func hello(name:String) {
    print("Hello, \(name)!")
    
    
}

hello()
hello ("Swift Programmer")

func hello(peopleNamed people: String...) {
    for person in people {
    }
    
hello()
    
}

hello(peopleNamed: "Swift Programmer", "Swift 2 Developer")
hello()

let name = "Swift Programmer"
print("Hello World")
print("Hello, \(name)!")


func hello(name: String) -> String {
    return "Hello, \(name)!"
}



