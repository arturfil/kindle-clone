//
//  BookCell.swift
//  KindleLBTA
//
//  Created by Arturo Filio Villa on 12/28/17.
//  Copyright © 2017 Arturo Filio Villa. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is the text for the title of our book inside of our cell"
        label.backgroundColor = .white
        return label
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.text = "this is some author fo the book that we have in this row"
        label.backgroundColor = .blue
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        backgroundColor = .gray
        
        addSubview(coverImageView)
        coverImageView.frame = CGRect(x: 8, y: 8, width: 50, height: 64)
        
        addSubview(titleLabel)
        titleLabel.frame = CGRect(x: 66, y: 20, width: UIScreen.main.bounds.width, height: 20)
        
        addSubview(authorLabel)
        authorLabel.frame = CGRect(x: 66, y: 48, width: 200, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
