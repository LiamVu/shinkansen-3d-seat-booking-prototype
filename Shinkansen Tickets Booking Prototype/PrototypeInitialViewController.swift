//
//  PrototypeInitialViewController.swift
//  Shinkansen Tickets Booking Prototype
//
//  Created by Virakri Jinangkul on 5/14/19.
//  Copyright © 2019 Virakri Jinangkul. All rights reserved.
//

import UIKit

class PrototypeInitialViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(UIFontMetrics(forTextStyle: .body).scaledFont(for: UIFont.systemFont(ofSize: 24, weight: .light)).pointSize)
        
        print(UIFontMetrics(forTextStyle: .headline).scaledFont(for: UIFont.systemFont(ofSize: 24, weight: .light)).pointSize)
        
        print(UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: UIFont.systemFont(ofSize: 24, weight: .light)).pointSize)
        
        print(UIFontMetrics(forTextStyle: .caption1).scaledFont(for: UIFont.systemFont(ofSize: 24, weight: .light)).pointSize)
    }
}
