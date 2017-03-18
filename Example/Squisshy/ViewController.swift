//
//  ViewController.swift
//  Squisshy
//
//  Created by MP0w on 03/18/2017.
//  Copyright (c) 2017 MP0w. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = SquisshyCollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.bounds.width, height: 250)
        layout.minimumLineSpacing = 10
        collectionView?.collectionViewLayout = layout
        collectionView?.register(SquisshyCollectionViewCell.self, forCellWithReuseIdentifier: "squisshy")
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "squisshy", for: indexPath) as! SquisshyCollectionViewCell
        cell.squisshyImageContainerView.imageView.image = UIImage(named: String(indexPath.row % 5 + 1))

        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
}
