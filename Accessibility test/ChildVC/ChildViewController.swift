//
//  ChildViewController.swift
//  Accessibility test
//
//  Created by Alexander Kazmin on 8/19/19.
//  Copyright © 2019 DataArt. All rights reserved.
//

import Foundation
import UIKit

class ChildViewController: UIViewController {


   class func viewController() -> ChildViewController {
        let storyboard = UIStoryboard(name: "Main",
                                      bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ChildViewController") as? ChildViewController
        else { fatalError() }
        return viewController
    }
}
