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
        
        setupNavigationBarStyles()
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "Kindle"
        
        fetchBooks()
    }
    
    
    
    func fetchBooks() {
        print("Fetching Books")
        if let url = URL(string: "https://letsbuildthatapp-videos.s3-us-west-2.amazonaws.com/kindle.json") {
            URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                
                if let err = error {
                    print("failed to fetch externale json books: ", err)
                    return
                }
                guard let data = data else { return }
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                    
                    guard let bookDictionaries = json as? [[String: Any]]
                        else { return }
                    
                    self.books = []
                    
                    for bookDictionary in bookDictionaries {
                        
                        let book = Book(dictionary: bookDictionary)
                        self.books?.append(book)

                    }
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    
                
                    
                } catch let jsonError {
                    print("Failed to parse JSON properly", jsonError)
                }
                
                
            }).resume()
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedBook = self.books?[indexPath.row]
//        print(book?.tite)
//        return
        
        let layout = UICollectionViewFlowLayout()
        let bookPagerController = BookPagerController(collectionViewLayout: layout)
        
        bookPagerController.book = selectedBook
        
        let navController = UINavigationController(rootViewController: bookPagerController)
        present(navController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BookCell
        
        let book = books?[indexPath.row]
        cell.book = book
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            return count
        }
        return 0
        
    }

}
