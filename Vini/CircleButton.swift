//
//  CircleButton.swift
//  Vini
//
//  Created by Loaner on 7/4/17.
//  Copyright © 2017 papanii. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {

   @IBInspectable var cornerRadius: CGFloat = 0{
        didSet
        {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet
        {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet
        {
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
