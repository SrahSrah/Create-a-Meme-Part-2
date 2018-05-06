//
//  SavedMemesTable.swift
//  Meme Me 1.0
//
//  Created by Sarah Hernandez on 4/24/18.
//  Copyright © 2018 Sarah Hernandez. All rights reserved.
//

import UIKit

class SavedMemesTable: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navBar: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.title = "Sent Memes"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
 
    // Returns number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fetchMemes().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let memes = fetchMemes()
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeCell") as! UITableViewCell
        
        cell.imageView?.image = memes[indexPath.row].getImage()
        cell.textLabel?.text = memes[indexPath.row].getMemeText()
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    
    func fetchMemes() -> [Meme]{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let imageToPass = fetchMemes()[indexPath.row].getImage()
        let controller = storyboard?.instantiateViewController(withIdentifier: "MemeDetail") as! MemeDetail
        controller.image = imageToPass
        navigationController?.pushViewController(controller, animated: true)
    }
}
