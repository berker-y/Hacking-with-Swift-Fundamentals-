import Cocoa

//Checkpoint 1

let C = 5

let F = (C * 9 / 5) + 32

print ("C = \(C)°")
print ("F = \(F)°")

//Checkpoint 2

let a: [String] = ["a", "b", "c", "c"]

print(a.count)

let b: Set = Set(a)

print(b.count)

//CheckPoint 3

for i in 1...100{
    if(i % 3 == 0 && i % 5 == 0){
        print("FizzBuzz")
    } else if(i % 5 == 0){
        print("Buzz")
    } else if(i % 3 == 0){
        print("Fizz")
    } else {
        print(i)
    }
}

//Example 1

func asd1(a: String, b: String) -> Bool{
    for i in a {
        for j in b {
            if(i == j){
                return true
            }
        }
    }
    return false
}

func asd2(a: String, b: String) -> Bool{
    b.sorted() == a.sorted()
}


asd1(a: "berker", b: "ase")
asd2(a: "berker", b: "ase")

//Checkpoint 4

enum aa:Error{
    case small, big
}

func asd2(number: Int)throws -> Int{
    if(number < 1 || number > 100_000){
        throw aa.small
    }
    for i in 1...100{
        if(i * i) == number{
            return i
        }
    }
    throw aa.big
}

do{
    try asd2(number:36)
}catch aa.small{
    print("out of bonds")
}catch aa.big{
    print("no root")
}

//Checkpoint 5

var luckyNumber = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumber.sorted().filter({!$0.isMultiple(of: 2)}).map({print($0, "is a lucky number")})

//Checkoint 6

struct Car {
    let model: String  // The model of the car, e.g. "Tesla Model S"
    let numberOfSeats: Int  // The number of seats in the car
    var currentGear: Int = 1  // The current gear of the car, initialized to 1
    
    private let maxGears = 10  // The maximum number of gears the car can have
    
    // Custom initializer that sets the model and number of seats
    init(model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
    }
    
    // Changes the current gear up by one, if possible
    mutating func shiftUp() {
        if currentGear < maxGears {
            currentGear += 1
        }
    }
    
    // Changes the current gear down by one, if possible
    mutating func shiftDown() {
        if currentGear > 1 {
            currentGear -= 1
        }
    }
}

//Checkpoint 7

class Animal{
    let legs = 4
}

class Dog:Animal{
    var bark: String
    
    init(bark: String) {
        self.bark = bark
    }
    
    func speak(){
        print()
    }
}

class Cat:Animal{
    let isTame: Bool
    var meow: String
    init(isTame: Bool, meow: String) {
        self.isTame = isTame
        self.meow = meow
    }
    func speak(){
        print()
    }
}

class Corgi:Dog{
    override func speak() {
        print(bark)
    }
}

class Poddle:Dog{
    override func speak() {
        print(bark)
    }
}

class Persian:Cat{
    override func speak() {
        print(meow)
    }
}

class Lion:Cat{
    override func speak() {
        print(meow)
    }
}

var kangal = Corgi(bark: "hav hav")
kangal.speak()
kangal.legs

var kedi = Lion(isTame: true, meow: "asdasd")
kedi.isTame
kedi.speak()
kedi.legs

//Checkpoint 8

protocol Building{
    var room: Int {get}
    var cost: Int {get}
    var estateAgentName: String {get}
    var name: Building.Type {get}
    func Summary()
}

extension Building{
    func Summary(){
        print("Sales summary for the \(name)\nRoom:\(room) Cost:\(cost) EstateAgentName:\(estateAgentName)")
    }
}


struct House:Building{
    var room: Int
    var cost: Int
    var estateAgentName: String
    var name: Building.Type
}

struct Office:Building{
    var room: Int
    
    var cost: Int
    
    var estateAgentName: String
    
    var name: Building.Type
    
}

let office = Office(room: 4, cost: 4, estateAgentName: "asd", name: Office.self)
let house = House(room: 3, cost: 4123, estateAgentName: "qwe", name: House.self)

office.Summary()
house.Summary()

//Checkpoint 9

func Optional(a: [Int]?) -> Int{
    return a?.randomElement() ?? Int.random(in: 1...100)
}

var array = [1,2,3,4,5]
array.removeAll()
print(Optional(a: array))
