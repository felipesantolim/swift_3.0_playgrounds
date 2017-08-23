//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Book {
    var title: String
    var isPublished: Bool
}

struct Author {
    var firstName: String
    var lastName: String
    var booksWritten: [Book] = []
    var booksBeingWritten: [Book] = []
    
    //: Type properties, keyword "static", a type property means you don't even need an instance of the type to access it.
    static var numberOfPages = 897
    
//    ##: GET / SET
    //: Typically you'll use these getters and setters when the active getting or setting requires additional computation.
    //: Take Note : (SET) Turns out that Swift provide this value to you in a variable called "newValue"
    var books: [Book] {
        get {
            return booksWritten
        }
//        set {
//            for book in newValue {
//                if book.isPublished {
//                    booksWritten.append(book)
//                } else {
//                    booksBeingWritten.append(book)
//                }
//            }
//        }
    }
    
//    ##: Computed Properties
    //: Computed properties are values that are obtained through some expression in the object.
    //: When the property is accessed this calculation is done and result is returned.
    //: A computed property is read only, you cannot assign a value.
    var totalBooks: Int {
        return booksWritten.count + booksBeingWritten.count
    }
    
    mutating func addBook(_ aBook: Book) {
        if aBook.isPublished {
            booksWritten.append(aBook)
        } else {
            booksBeingWritten.append(aBook)
        }
    }
}

var book = Book(title: "The Stand", isPublished: true)
book.title
book.isPublished
book.title = "The Another Stand"

var writer = Author(firstName: "Stephen", lastName: "King", booksWritten: [book], booksBeingWritten:[])
writer.firstName
writer.lastName
_ = writer.books.map {
    print($0.title)
    print($0.isPublished)
}

var unPublishedBook = Book(title: "Untitled Book", isPublished: false)
writer.addBook(unPublishedBook)
writer.booksBeingWritten

writer.totalBooks
print(writer.booksWritten)

//: cannot assign to property: 'totalBooks' is a get-only property
writer.totalBooks = 10

print(Author.numberOfPages)


