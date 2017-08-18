//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Closures {
    
    class func executeClosure() {
        
        var myFirstClosure: (Int, Int) -> Int
        
        // "in" separa o header "(n1: Int, n2: Int) -> Int" do body "return (n1 * n2)".
        
        myFirstClosure = { (n1: Int, n2: Int) -> Int in
            print("\((n1 * n2))")
            return (n1 * n2)
        }
        
        // swift tem tipos inferidos como "var defineInt = 10" é o mesmo que "var defineInt: Int = Int(10)"
        // em closures é a mesma coisa, tipos inferidos em closures podem ser como no exemplo abaixo.
        
        myFirstClosure = {
            $0 * $1
        }
        
        myFirstClosure(10,10)
    }
}

//Closures().myFirstClosure(10,01)
Closures.executeClosure()

var closure = { () -> Void in print("hello") }
closure()

// Type inference. "var anotherClosure: () -> () = { print("world") }"
var anotherClosure = { print("world") }
anotherClosure()

func runClosure(_ aClosure: () -> Void) {
    aClosure()
}

runClosure(anotherClosure)

var yetAnotherClosure: (String, Int) -> Void = { (message: String, times: Int) -> Void in
    for _ in 0 ..< times {
        print(message)
    }
}

yetAnotherClosure("Felipe", 5)

var multiply0: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a * b }
var multiply1: (Int, Int) -> Int = { (a: Int, b: Int) in return a * b }
var multiply2: (Int, Int) -> Int = { return $0 * $1 }
var multiply3: (Int, Int) -> Int = { $0 * $1 }

multiply0(5,5)
multiply1(15,5)
multiply2(2,10)
multiply3(1,98)

var multiply4: (Int, Int) -> Int
multiply4 = { (a: Int, b: Int) -> Int in return a * b }
multiply4(10,9)

typealias NextResultClosure = (Int, Int) -> Bool
func closureParameter(_ result: NextResultClosure) {}

var counter = 0
var counterClosure = {
    counter += 1
}

counterClosure()
counterClosure()
counterClosure()
counterClosure()
counter
counter = 0
counterClosure()
counterClosure()
counter

typealias NextClosure = (_ completion: Bool) -> Void

func result(times: Int, task: NextClosure) {
    task(true)
}

result(times: 10, task: { (status: Bool) -> Void in
    print(status)
})

