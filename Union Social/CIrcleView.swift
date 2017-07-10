//
//  CIrcleView.swift
//  Union Social
//
//  Created by Ramit sharma on 14/06/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit

class CIrcleView: UIImageView {

 
    override func awakeFromNib() {
        super.awakeFromNib()
 
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.7).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)

    
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true

    }

}
