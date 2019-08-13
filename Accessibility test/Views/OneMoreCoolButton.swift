//
//  OneMoreCoolButton.swift
//  Accessibility test
//
//  Created by Alexander Kazmin on 8/13/19.
//  Copyright © 2019 DataArt. All rights reserved.
//

import Foundation
import UIKit

class OneMoreCoolButton: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.width / 2
    }

    class func view() -> OneMoreCoolButton {
        let nib = UINib(nibName: "OneMoreCoolButton",
                        bundle: nil)
        guard let view = nib.instantiate(withOwner: self,
                                         options: nil).first as? OneMoreCoolButton
            else { fatalError() }
        return view
    }
}
