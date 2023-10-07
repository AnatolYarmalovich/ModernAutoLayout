//
//  RootViewController.swift
//  CodeLayout-v4
//
//  Created by Anatol Yarmalovich on 07/10/2023.
//

import UIKit

final class RootViewController: UIViewController {

    let padding: CGFloat = 50.0

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(greenView)
    }

    override func viewWillLayoutSubviews() {
        let width = view.bounds.width - 2 * padding
        greenView.frame = .init(
            x: padding,
            y: padding,
            width: width,
            height: 3 * padding)
    }
}

