
import Foundation

/*
 HW M1L2:
 Опционалы:
 1) Написать функцию, которая принимает два опциональных числа и возвращает их сумму.
 Если хотя бы одно из чисел отсутствует (nil), функция должна вернуть nil.
 2) Создать два класса: "Person" и "Address". "Person" содержит опциональное свойство
 "address" типа "Address". Напишите функцию, которая принимает объект "Person" и возвращает строку с городом, если он существует, или "Неизвестный город" в противном случае
 ООП:
 3) Привести пример для каждого из пройденных принципов ООП. (Наследование, инкапсуляция, полиморфизм).
  */

//hw n1 -  1) Написать функцию, которая принимает два опциональных числа и возвращает их сумму.
//Если хотя бы одно из чисел отсутствует (nil), функция должна вернуть nil.

//func summary(_ num: Int?, num2: Int?){
//    var total = Int()
//    var total2 = Int()
//    for i in 0...0{
//        if let a = num{
//            total += a
//        }else{
//            print("nil")
//            break
//        }
//        if let c = num2{
//            total2 += c
//            print(total + total2)
//        }else{
//            
//            print("nil")
//        }
//        
//    }
//  
//    
//    
//  
//}
//summary(23, num2: 17)

// 2) Создать два класса: "Person" и "Address". "Person" содержит опциональное свойство
//"address" типа "Address". Напишите функцию, которая принимает объект "Person" и возвращает строку с городом, если он существует, или "Неизвестный город" в противном случае

//class Person{
//    var name: String
//    var age: Int
//    var adress: Adress?
//    
//    init(name: String, age: Int, adress: Adress? = nil) {
//        self.name = name
//        self.age = age
//        self.adress = adress
//    }
//    func info(){
//        var totalAdress = adress
//        if totalAdress is Adress{
//            print("меня зовут \(name) и мне \(age) лет и я живу в \(adress)")
//        }else {
//            print("меня зовут \(name) и мне \(age) лет")
//        }
//    }
//}
//class Adress{
//    var city: String?
//}
//
//var a = Person(name: "beka", age: 19, adress: nil)
//a.info()

// 3) Привести пример для каждого из пройденных принципов ООП. (Наследование, инкапсуляция, полиморфизм).
//Наследование:
//class Human{
//    var name: String
//    var age: Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    func info(){
//        print("\(name), \(age)")
//    }
//}
//
//class Worker: Human{
//    
//}
//полиморфизм:
//
//class Human{
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    func info(){
//        print("\(name), \(age)")
//    }
//}
//
//class Worker: Human{
//    var experience: Int
//    
//    init(experience: Int, name: String, age: Int) {
//        self.experience = experience
//        super.init(name: name, age: age)
//    }
//    override func info() {
//        print("\(name), \(age), \(experience)")
//    }
//}
//
//class Intern: Worker{
//    var interests: String
//    init(interests: String, experience: Int, name: String, age: Int) {
//        self.interests = interests
//        super.init(experience: experience, name: name, age: age)
//    }
//    override func info() {
//        print("\(name), \(age), \(experience), \(interests)")
//    }
//}
//инкапсуляция:

//class Human{
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//   private func info(){
//        print("\(name), \(age)")
//    }
//    
//    func publicFunc(){
//        info()
//    }
//}
//
//
//
//var hum1 = Human(name: "Beka", age: 19)
//hum1.publicFunc()

//n4
//
//class Vehicle{
//    var model: String
//    
//    init(model: String) {
//        self.model = model
//    }
//    
//    func startEngine(){
//        print("Basic vehicle sound")
//    }
//}
//
//class Car: Vehicle{
//    override func startEngine() {
//        print("BRRRRRUUUM")
//    }
//}
//class Motorcycle: Vehicle{
//    override func startEngine() {
//        print("VRRRRUUUUUM")
//    }
//}
//
//var veh = Vehicle(model: "Auto")
//veh.startEngine()
//var car = Car(model: "BMW")
//car.startEngine()
//var moto = Motorcycle(model: "Kawasaki")
//moto.startEngine()


//n5
//protocol MusicallInstrument{
//    var sound: String { get set }
//    
//    func play() -> String
//    
//}
//
//class Piano: MusicallInstrument{
//    func play() -> String {
//        print(sound)
//        return sound
//        
//    }
//    
//
// 
//    
//    var sound: String
//    
//    init(sound: String) {
//       
//        self.sound = sound
//    }
//    
//    
//    
//}
//class Guitar: MusicallInstrument{
//    var sound: String
//    
//    func play() -> String {
//        print(sound)
//        return sound
//    }
//    init(sound: String) {
//        self.sound = sound
//    }
//    
//    
//    
//}
//
//var guitar = Guitar(sound: "Basic Guitar sound")
//guitar.play()

//n6
//protocol Shape{
//
//    func area() -> Double
//}
//
//class Circle: Shape{
//    var radius: Double
//    
//    var constant = 3.14
//    
// func area() -> Double{
//        var totalRad = radius * radius
//     print("result is \(constant * totalRad)")
//     return (constant * totalRad)
//    }
//    init(radius: Double, constant: Double = 3.14) {
//        self.radius = radius
//        self.constant = constant
//    }
//    
//}
//
//class Rectangle: Shape{
//    var lenght: Double
//    var width: Double
//    
//    init(lenght: Double, width: Double) {
//        self.lenght = lenght
//        self.width = width
//    }
//    
//    func area() -> Double {
//        print("result \(lenght * width)")
//        return (lenght * width)
//    }
//    
//    
//}
// var rect = Rectangle(lenght: 22, width: 4)
//rect.area()

 //n7
protocol AutoDevice{
    var volumePower: Int { get set }
    
    func getVolume()
}

class StereoSystem: AutoDevice{
    var volumePower: Int
    
    init(volumePower: Int) {
        self.volumePower = volumePower
    }
    func getVolume() {
        print("Stereosystem volume Power is \(volumePower)")
    }
    
    
    
}
class HeadPhones: AutoDevice{
    var volumePower: Int
    
    init(volumePower: Int) {
        self.volumePower = volumePower
    }
    func getVolume() {
        print("HeadPhones volume Power is \(volumePower)")
    }
    
    
    
}
