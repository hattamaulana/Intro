//
//  RoundedImageView.swift
//  intro
//
//  Created by attaham on 22/03/22.
//

import UIKit

@IBDesignable public class RoundedImageView: UIImageView {

    override public func layoutSubviews() {
        super.layoutSubviews()

        //hard-coded this since it's always round
        layer.cornerRadius = 0.5 * bounds.size.width
    }
}
