//
//  BookPageController.swift
//  KindleLBTA
//
//  Created by Arturo Filio Villa on 12/29/17.
//  Copyright © 2017 Arturo Filio Villa. All rights reserved.
//

import UIKit

class BookPagerController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .blue
        
        navigationItem.title = "Book"
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath )
        
        cell.backgroundColor = .white
        
        return cell
    }
    

}



