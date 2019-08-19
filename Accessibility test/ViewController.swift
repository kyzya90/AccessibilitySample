//
//  ViewController.swift
//  Accessibility test
//
//  Created by Alexander Kazmin on 8/13/19.
//  Copyright © 2019 DataArt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var anotherContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = CoolButtonView.view()
        containerView.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        button.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
        button.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true


        let anotherButton = OneMoreCoolButton.view()
        anotherContainerView.addSubview(anotherButton)
        anotherButton.translatesAutoresizingMaskIntoConstraints = false
        anotherButton.topAnchor.constraint(equalTo: anotherContainerView.topAnchor).isActive = true
        anotherButton.leftAnchor.constraint(equalTo: anotherContainerView.leftAnchor).isActive = true
        anotherButton.rightAnchor.constraint(equalTo: anotherContainerView.rightAnchor).isActive = true
        anotherButton.bottomAnchor.constraint(equalTo: anotherContainerView.bottomAnchor).isActive = true
    }
    @IBAction func didTapPresent(_ sender: Any) {
        let viewController = ChildViewController.viewController()
        self.present(viewController,
                     animated: true,
                     completion: nil)
    }
}

