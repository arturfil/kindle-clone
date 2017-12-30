//
//  PageCell.swift
//  KindleLBTA
//
//  Created by Arturo Filio Villa on 12/29/17.
//  Copyright © 2017 Arturo Filio Villa. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text =
        "Bacon ipsum dolor amet flank ham hock chicken shank ribeye biltong sirloin cow. Chuck filet mignon pig, jerky turducken t-bone ribeye landjaeger ham hock biltong tail. Tenderloin flank bresaola boudin. Turducken shank landjaeger porchetta fatback. Ball tip short loin bacon tongue capicola leberkas sirloin pig hamburger jowl. Brisket meatloaf meatball, pork belly drumstick ham hock tail. Kielbasa capicola turducken corned beef."
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(textLabel)
        //textLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
    
        textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10 ).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
