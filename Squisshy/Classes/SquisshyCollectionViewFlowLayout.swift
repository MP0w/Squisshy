//
//  SquisshyCollectionViewFlowLayout.swift
//  Squisshy
//
//  Created by Alex Manzella on 18/03/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SquisshyCollectionViewFlowLayout: UICollectionViewFlowLayout {

    override static var layoutAttributesClass: AnyClass {
        return SquisshyCollectionViewLayoutAttributes.self
    }

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {

        guard let attributes = super.layoutAttributesForElements(in: rect) as? [SquisshyCollectionViewLayoutAttributes] else {
            return super.layoutAttributesForElements(in: rect)
        }

        return attributes.map(applyPercentage)
    }

    private func applyPercentage(to attribute: SquisshyCollectionViewLayoutAttributes) -> SquisshyCollectionViewLayoutAttributes {

        guard let collectionView = collectionView, collectionView.bounds.height > 0 else {
            return attribute
        }

        let offset = attribute.frame.maxY - collectionView.contentOffset.y
        let percentage = offset / (collectionView.bounds.height + attribute.frame.height)
        attribute.percentage = percentage
        
        return attribute
    }

    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
