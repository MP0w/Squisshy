//
//  SquisshyImageContainerView.swift
//  Squisshy
//
//  Created by Alex Manzella on 18/03/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SquisshyImageContainerView: UIView {

    let imageView = UIImageView()
    let offset: CGFloat
    var percentage: CGFloat = 0.0 {
        didSet {
            adjustFrame()
        }
    }

    init(offset: CGFloat) {
        self.offset = offset
        super.init(frame: .zero)
        addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        adjustFrame()
    }

    private func adjustFrame() {
        let inset = -offset
        var frame = bounds.insetBy(dx: 0, dy: inset / 2)
        frame.origin.y = inset * percentage
        imageView.frame = frame
    }
}
