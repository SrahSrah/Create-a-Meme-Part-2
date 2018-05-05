//
//  SavedMemesCollection.swift
//  Meme Me 1.0
//
//  Created by Sarah Hernandez on 4/28/18.
//  Copyright © 2018 Sarah Hernandez. All rights reserved.
//

import UIKit

class SavedMemesCollection: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
  
    @IBOutlet weak var navBar: UINavigationItem!
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.title = "Sent Memes"
        let space:CGFloat = 3.0
        let width = (view.frame.size.width - (2 * space)) / 3.0
        let height = (view.frame.size.height-(2*space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: width, height: height)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return fetchMemes().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let memes = fetchMemes()
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeItem", for: indexPath) as! memeViewCell
        
        cell.memeImage.image = memes[indexPath.row].getImage()

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imageToPass = fetchMemes()[indexPath.row].getImage()
        let controller = storyboard?.instantiateViewController(withIdentifier: "MemeDetail") as! MemeDetail
        controller.image = imageToPass
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func fetchMemes() -> [Meme]{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
    

}
