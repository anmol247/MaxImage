//
//  ViewController.swift
//  ImageApp
//
//  Created by Anmol Tiwari on 15/06/19.
//  Copyright © 2019 Anmol Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //properties
    
    let images = [#imageLiteral(resourceName: "image-1.jpg"),#imageLiteral(resourceName: "image-2.jpg"),#imageLiteral(resourceName: "image-3.jpg"),#imageLiteral(resourceName: "image-4.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

//Data Source

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! PhotoCell
    
        let image = images[indexPath.item]
        cell.imageView.image = image
        
        return cell
    }
    
}
