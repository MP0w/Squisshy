//
//  SquisshyCollectionViewLayoutAttributes.swift
//  Squisshy
//
//  Created by Alex Manzella on 18/03/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class SquisshyCollectionViewLayoutAttributes: UICollectionViewLayoutAttributes {

    /// A normalized value between 0 and 1 of the position of the view in the collection view
    /// 0: bottom of cell is at beginning of the collection
    /// 1: top of cell is at end of the collection
    var percentage: CGFloat = 0.0

    override func copy(with zone: NSZone? = nil) -> Any {
        let attribute = super.copy(with: zone)
        (attribute as? SquisshyCollectionViewLayoutAttributes)?.percentage = percentage
        return attribute
    }

    override func isEqual(_ object: Any?) -> Bool {
        return super.isEqual(object) && percentage == (object as? SquisshyCollectionViewLayoutAttributes)?.percentage
    }
}
