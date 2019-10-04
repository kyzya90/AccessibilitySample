//
//  CoolButtonView.swift
//  Accessibility test
//
//  Created by Alexander Kazmin on 8/13/19.
//  Copyright © 2019 DataArt. All rights reserved.
//

import Foundation
import UIKit

class CoolButtonView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapButton))
        self.addGestureRecognizer(tapGesture)
        applyAccessibility()
    }

    @objc
    func didTapButton() {
        print("Button is pressed")
    }

    @IBOutlet weak var textLabel: UILabel!
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.width / 2
    }

    class func view() -> CoolButtonView {
        let nib = UINib(nibName: "CoolButtonView",
                        bundle: nil)
        guard let view = nib.instantiate(withOwner: self,
                                         options: nil).first as? CoolButtonView
        else { fatalError() }
        return view
    }

    private func applyAccessibility() {
        // Dynamic font type
        textLabel.font = UIFontMetrics.default.scaledFont(for: textLabel.font)
        // Voice over support
        isAccessibilityElement = true
        accessibilityLabel = textLabel.text
        accessibilityHint = "Selects the \(textLabel.text) flag"
        accessibilityTraits = .button
        // ignore inverting colors
        accessibilityIgnoresInvertColors = true
    }
}
