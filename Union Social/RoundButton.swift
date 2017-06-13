//
//  RoundButton.swift
//  Union Social
//
//  Created by Ramit sharma on 08/06/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit

class RoundButton: UIButton {


    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.7).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        imageView?.contentMode = .scaleAspectFit
        
    }

    
    override func layoutSubviews() {
        
        layer.cornerRadius = self.frame.width / 2
    }
}
