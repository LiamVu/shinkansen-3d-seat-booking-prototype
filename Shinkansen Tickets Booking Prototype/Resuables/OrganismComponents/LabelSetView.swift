//
//  LabelSetView.swift
//  Shinkansen Tickets Booking Prototype
//
//  Created by Virakri Jinangkul on 5/30/19.
//  Copyright © 2019 Virakri Jinangkul. All rights reserved.
//

import UIKit
import Kumi

class LabelSetView: UIStackView {
    
    enum _Type {
        case regular
        case small
    }
    
    fileprivate var titleLabel: Label
    
    fileprivate var subtitleLabel: Label
    
    init(title: String, subtitle: String? = nil) {
        titleLabel = Label()
        subtitleLabel = Label()
        super.init(frame: .zero)
        setupTheme()
        setupText(title: title, subtitle: subtitle)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addArrangedSubview(titleLabel)
        addArrangedSubview(subtitleLabel)
    }
    
    /// Setup text colors, text style, and spacing between labels according to the current theme and current accessibility setup.
    public func setupTheme() {
        titleLabel.textColor = currentColorTheme.component.primaryText
        subtitleLabel.textColor = currentColorTheme.component.primaryText
        titleLabel.textStyle = TextStyle.largeTitle
        subtitleLabel.textStyle = TextStyle.subheadline
    }
    
    /// Mutates the texts in two labels
    ///
    /// - Parameters:
    ///   - title: The current text that will be displayed by the `titleLabel` of its label set.
    ///   - subtitle: The current text that will be displayed by the `subtitleLabel` of its label set.
    public func setupText(title: String, subtitle: String? = nil) {
        titleLabel.text = title
        subtitleLabel.text = subtitle
    }
}
