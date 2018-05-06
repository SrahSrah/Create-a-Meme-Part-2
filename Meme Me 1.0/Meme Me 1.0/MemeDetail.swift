//
//  MemeDetail.swift
//  Meme Me 1.0
//
//  Created by Sarah Hernandez on 5/5/18.
//  Copyright © 2018 Sarah Hernandez. All rights reserved.
//

import UIKit

class MemeDetail: UIViewController {

    
    @IBOutlet weak var memeDetail: UIImageView!
    var image : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        memeDetail.image = image
        
    }
}
