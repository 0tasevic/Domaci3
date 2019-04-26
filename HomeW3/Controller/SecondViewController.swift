//
//  SecondViewController.swift
//  HomeW3
//
//  Created by Milos Otasevic on 24/04/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    let imagesForCellBackground  = [#imageLiteral(resourceName: "dashboard"),#imageLiteral(resourceName: "apple"),#imageLiteral(resourceName: "twitter"),#imageLiteral(resourceName: "help"),#imageLiteral(resourceName: "Investment"),#imageLiteral(resourceName: "keypad"),#imageLiteral(resourceName: "lock"),#imageLiteral(resourceName: "instagram"),#imageLiteral(resourceName: "layers"),#imageLiteral(resourceName: "home"),#imageLiteral(resourceName: "laptop"),#imageLiteral(resourceName: "for_you")]

    override func viewDidLoad() {
        super.viewDidLoad()
       self.collection.delegate = self
        self.collection.dataSource = self
        let nib = UINib(nibName: "LogoCollectionViewCell", bundle: nil)
        collection.register(nib, forCellWithReuseIdentifier: "LogoCollectionViewCell")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setUpCollectionViewItemSize()
    }
    private func setUpCollectionViewItemSize(){
        if collectionViewFlowLayout.self == nil{
            let numberOfItemPreRow: CGFloat = 2
            let lineSpecing: CGFloat = 9
            let interItemSpecing: CGFloat  = 9
            
            let width = (collection.frame.height - (numberOfItemPreRow - 1) * interItemSpecing) / numberOfItemPreRow
            let height = width
            
            collectionViewFlowLayout = UICollectionViewFlowLayout()
            collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
            collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout.scrollDirection = .horizontal
            collectionViewFlowLayout.minimumLineSpacing = lineSpecing
            collectionViewFlowLayout.minimumInteritemSpacing = interItemSpecing
            
            collection.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        }
    }
}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LogoCollectionViewCell", for: indexPath) as! LogoCollectionViewCell
        cell.logoImage.image = imagesForCellBackground[indexPath.row % imagesForCellBackground.count]
        cell.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
        return cell
    }
}


