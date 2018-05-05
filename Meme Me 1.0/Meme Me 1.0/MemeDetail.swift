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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
