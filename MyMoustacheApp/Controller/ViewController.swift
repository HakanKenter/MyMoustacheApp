//
//  ViewController.swift
//  MyMoustacheApp
//
//  Created by kenter on 21/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var moustacheLbl: UILabel!
    @IBOutlet weak var moustacheIV: UIImageView!
    @IBOutlet weak var moustacheDescTV: UITextView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var moustaches: [Moustache] = AllMoustaches.get.all
    var currentMoustacheIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMoustache()
        setup()
    }
  
    func setupMoustache() {
        let moustache = moustaches[currentMoustacheIndex]
        moustacheLbl.text = moustache.title
        moustacheDescTV.text = moustache.desc
        moustacheIV.image = moustache.image
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    var id: String {
        return "MoustacheCell"
    }
    
    func setup() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let flowLayout = UICollectionViewFlowLayout()
        let width = collectionView.frame.height * 0.85
        flowLayout.itemSize = CGSize(width: width, height: width)
        flowLayout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = flowLayout
        collectionView.layer.cornerRadius = 25
        collectionView.layer.borderWidth = 1
        collectionView.layer.borderColor = UIColor.systemMint.cgColor
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moustaches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as! MoustacheCell
        cell.image = moustaches[indexPath.item].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let index = indexPath.item
        currentMoustacheIndex = index
        setupMoustache()
    }
    
}
