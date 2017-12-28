//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Arturo Filio Villa on 12/26/17.
//  Copyright © 2017 Arturo Filio Villa. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.title  = title
        self.author = author
        self.pages  = pages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        // can provide custom code starting here
        
        
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "Text for the second page")

        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Issacson", pages: pages)

//        let firstPage = book.pages[0]
//
//        if (page1.text == "Text for the first page" ) {
//            view.backgroundColor = .white
//        }
        
        
        let book2 = Book(title: "Bill Gates A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "text for page 2"),
            Page(number: 3, text: "text for page 3"),
            Page(number: 4, text: "text for page 4")
            ])
        
        let books = [book, book2]
        
        for book in books {
            for page in book.pages {
                print(page.text)
            }
        }
    }

}

