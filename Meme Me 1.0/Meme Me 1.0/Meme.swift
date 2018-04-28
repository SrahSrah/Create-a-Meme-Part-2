//
//  Meme.swift
//  Meme Me 1.0
//
//  Created by Sarah Hernandez on 4/28/18.
//  Copyright © 2018 Sarah Hernandez. All rights reserved.
//

import UIKit
import Foundation

struct Meme {
    
    let topText : String
    let bottomText : String
    let originalImage : UIImage
    let memedImage : UIImage
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
    
}

