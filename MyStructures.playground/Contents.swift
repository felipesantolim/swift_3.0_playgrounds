//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Location {
    var x: Int
    var y: Int
    var name: String
    
    func isSame(location: Location) -> Bool {
        return true
    }
    
    mutating func randomize() {
        
    }
}

var location: Location = Location(x: 10, y: 20, name: "Steve")

location.isSame(location: location)
location.randomize()

//## STRUCT ARE IMMUTABLE BY DEFAULT.
//## Use keyword mutating

struct Book {
    var title: String
}

struct Author{
    var firstName: String
    var lastName: String
    var books: [Book] = []
    
    mutating func addBook(_ aBook: Book) {
        books.append(aBook)
    }
    
    mutating func removeBook(_ index: Int) {
        books.remove(at: index)
    }
}

var book = Book(title: "The Stand")
book.title
var anotherBook = Book(title: "The another book title")
anotherBook.title

var writer = Author(firstName: "Stephen", lastName: "King", books: [book])
writer.firstName
writer.lastName
_ = writer.books.map {  print($0.title) }

writer.addBook(anotherBook)

_ = writer.books.map {  print($0.title) }

struct Material {
    var type: String
}

struct Color {
    var title: String
}

struct TShirt {
    var size: String
    var color: Color
    var material: Material
    
    func calculatePrice(_ tshirt: TShirt) {
        switch tshirt.size {
        case "L":
            print("price is $10")
        case "M":
            print("price is $20")
        case "B":
            print("price is $30")
        default:
            print("price is FREE")
        }
    }
}

var material = Material(type: "Regular")
var color = Color(title: "Blue")
var tshirt = TShirt(size: "M", color: color, material: material)

tshirt.size
tshirt.color.title
tshirt.material.type

tshirt.calculatePrice(tshirt)


