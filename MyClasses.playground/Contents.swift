//: Playground - noun: a place where people can play

import UIKit
import Foundation

//: VALUE TYPES vs REFERENCE TYPES
//: The big difference between structures ans classes is that structures are value types whereas classes are reference types.
//: Value types like as Numbers, Bool, String, Array and Dictionaries. value types can be copied and any changes to the copy arent's reflected in the original.

//: Structures

struct StructMovie {
    var title: String
    var runningTime: Int
}

var adventureMovie = StructMovie(title: "Adventure movie title", runningTime: 90)
var scienceFictionMovie = adventureMovie

scienceFictionMovie.title = "2001"

print(adventureMovie.title)
print(scienceFictionMovie.title)

print("\n")

//: Classes

class ClassMovie {
    var title: String
    var runningOfTimes: Int
    
    init(title: String, runningOfTimes: Int) {
        self.title = title
        self.runningOfTimes = runningOfTimes
    }
}

var adventureMovie2 = ClassMovie(title: "Adverture movie title", runningOfTimes: 180)
var scienceFictionMovie2 = adventureMovie2

adventureMovie2.title = "2001"

print(adventureMovie2.title)
print(scienceFictionMovie2.title)
print(adventureMovie2 === scienceFictionMovie2)

scienceFictionMovie2 = ClassMovie(title: "Another movie title", runningOfTimes: 180)

print(adventureMovie2 === scienceFictionMovie2)







var result: (Int,Int) -> Int

result = {
    $0 + $1
}

var completion: (Int, Int, Int) -> Bool = { (n1: Int, n2: Int, n3: Int) -> Bool in  return true }

completion(20, 20, 30)
