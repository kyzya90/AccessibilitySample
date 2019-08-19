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
        pinToSuperview(view: button)


        let anotherButton = OneMoreCoolButton.view()
        anotherContainerView.addSubview(anotherButton)
        pinToSuperview(view: anotherButton)
    }
    @IBAction func didTapPresent(_ sender: Any) {
        let viewController = ChildViewController.viewController()
        viewController.willMove(toParent: self)
        view.addSubview(viewController.view)
        pinToSuperview(view: viewController.view)
        addChild(viewController)
    }


    private func pinToSuperview(view: UIView) {
        guard let superview = view.superview else { fatalError() }
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: superview.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: superview.rightAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
    }
}

