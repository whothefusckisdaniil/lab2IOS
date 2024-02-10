class Book 
{
    var title: String
    var author: String
    var year: Int
    var pageCount: Int    


    init(title: String, author: String, year: Int, pageCount: Int)
    {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }

    func displayBookInfo() 
    {
        print("Book Information:")
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
    }
}

class Library
{
    var books: [Book] = []

    func addBook(book: Book)
    {
        books.append(book)
        print("Book added to the library.")
    }

    func removeBook(title: String)
    {
        books = books.filter { $0.title != title }
        print("Book removed from the library.")
    }

    func displayAllBooks()
    {
        if books.isEmpty
        {
            print("The library is empty.")
        }
        else 
        {
            print("Library Books: ")
            for book in books
            {
                book.displayBookInfo()
                print("------------------------")
            }    
        }
    }
}

let book1 = Book(title: "Harry Potter", author: "J. K. Rowling", year: 2001, pageCount: 405)
let book2 = Book(title: "Metro 2033", author: "Dmitry Gluhovsky", year: 2007, pageCount: 384)

let library = Library()

library.addBook(book: book1)
library.addBook(book: book2)

library.displayAllBooks()

library.removeBook(title: "Swift Programming")

library.displayAllBooks()