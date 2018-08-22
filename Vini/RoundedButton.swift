//
//  RoundedButton.swift
//  Vini
//
//  Created by Loaner on 7/1/17.
//  Copyright © 2017 papanii. All rights reserved.
//

import UIKit

class RoundedButton : UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2/UIScreen.main.nativeScale
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        layer.cornerRadius = frame.height/2
        layer.borderColor = isEnabled ? tintColor.cgColor: UIColor.lightGray.cgColor
        
    }
}
