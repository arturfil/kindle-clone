//
//  Models.swift
//  KindleLBTA
//
//  Created by Arturo Filio Villa on 12/27/17.
//  Copyright © 2017 Arturo Filio Villa. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let image: UIImage
    let pages: [Page]
    
    init(title: String, author: String, image: UIImage, pages: [Page]) {
        self.title  = title
        self.author = author
        self.image = image
        self.pages  = pages
    }
    
    init(dictionary: [String: Any]) {
        self.title = dictionary["title"] as? String ?? ""
        self.author = dictionary["author"] as? String ?? ""
        image = #imageLiteral(resourceName: "steve_jobs")

        var bookPages = [Page]()
        
        if let pagesDictionaries = dictionary["pages"] as? [[String: Any]] {
            for pageDictionary in pagesDictionaries {
                if let pageText = pageDictionary["text"] as? String {
                    let page = Page(number: 1, text: pageText)
                    bookPages.append(page)
                }
                
            }
        }
        
        pages = bookPages
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
