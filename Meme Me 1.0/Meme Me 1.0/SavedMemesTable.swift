//
//  SavedMemesTable.swift
//  Meme Me 1.0
//
//  Created by Sarah Hernandez on 4/24/18.
//  Copyright © 2018 Sarah Hernandez. All rights reserved.
//

import UIKit

class SavedMemesTable: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let memes = appDelegate.memes
        
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
