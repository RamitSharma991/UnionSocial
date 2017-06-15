//
//  FancyText.swift
//  Union Social
//
//  Created by Ramit sharma on 08/06/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit

class FancyText: UITextField {
    

    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1
        
    }

    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        
        return bounds.insetBy(dx: 10, dy: 5)
    }
}
