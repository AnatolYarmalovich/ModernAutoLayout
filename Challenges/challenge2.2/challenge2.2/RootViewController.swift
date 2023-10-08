//
//  RootViewController.swift
//  challenge2.2
//
//  Created by Anatol Yarmalovich on 07/10/2023.
//

import UIKit

class RootViewController: UIViewController {

    let greenViewPadding: CGFloat = 50.0
    let redViewPadding: CGFloat = 25.0

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()

    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(greenView)
        greenView.addSubview(redView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        greenView.frame = .init(
            x: 50.0,
            y: 50.0,
            width: view.bounds.width - 100,
            height: view.bounds.height - 100)
        redView.frame = .init(
            x: 25.0,
            y: greenView.bounds.midY - greenViewPadding,
            width: greenView.bounds.width - 50,
            height: 100.0)
    }
}

