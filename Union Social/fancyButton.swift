//
//  fancyButton.swift
//  Union Social
//
//  Created by Ramit sharma on 08/06/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit

class fancyButton: UIButton {

    override func awakeFromNib() {
        
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.cornerRadius = 18.5
        
        super.awakeFromNib()
        
    }

}
