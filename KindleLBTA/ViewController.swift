//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Arturo Filio Villa on 12/26/17.
//  Copyright © 2017 Arturo Filio Villa. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Kindle"
        
        view.backgroundColor = .red
        // can provide custom code starting here
        
        setupBooks()     
    }
    
    func setupBooks() {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "Text for the second page")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Issacson", pages: pages)
        
        let book2 = Book(title: "Bill Gates A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "text for page 2"),
            Page(number: 3, text: "text for page 3"),
            Page(number: 4, text: "text for page 4")
            ])
        
        self.books = [book, book2]
        
        //        guard let books = self.books else { return }
        //
        //        for book in books {
        //            for page in book.pages {
        //                print(page.text)
        //            }
        //        }
        
        if let unwrappedBooks = self.books {
            for book in unwrappedBooks {
                for page in book.pages {
                    print(page.text)
                }
            }
        }
    }
}

