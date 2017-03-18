//
//  SquisshyCollectionViewCell.swift
//  Squisshy
//
//  Created by Alex Manzella on 18/03/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SquisshyCollectionViewCell: UICollectionViewCell {

    let squisshyImageContainerView = SquisshyImageContainerView(offset: 120)

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(squisshyImageContainerView)
        squisshyImageContainerView.frame = bounds
        squisshyImageContainerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        guard let attribute = layoutAttributes as? SquisshyCollectionViewLayoutAttributes else {
            return
        }

        squisshyImageContainerView.percentage = attribute.percentage
    }
}
