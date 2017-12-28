//
//  BookCell.swift
//  KindleLBTA
//
//  Created by Arturo Filio Villa on 12/28/17.
//  Copyright © 2017 Arturo Filio Villa. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        backgroundColor = .gray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
