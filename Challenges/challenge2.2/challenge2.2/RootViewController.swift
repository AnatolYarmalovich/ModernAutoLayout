//
//  RootViewController.swift
//  challenge2.2
//
//  Created by Anatol Yarmalovich on 07/10/2023.
//

import UIKit

class RootViewController: UIViewController {

    private enum ViewMetrics {
        static let externalPadding: CGFloat = 50.0
        static let internalPadding: CGFloat = 25.0
        static let redViewHeight: CGFloat = 100.0
    }

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

        let containerHeight = view.bounds.height
        let containerWidth = view.bounds.width

        let greenViewWidth = containerWidth - ViewMetrics.externalPadding * 2
        let greenViewHeight = containerHeight - ViewMetrics.externalPadding * 2
        greenView.frame = .init(
            x: ViewMetrics.externalPadding,
            y: ViewMetrics.externalPadding,
            width: greenViewWidth,
            height: greenViewHeight)

        let redY = (greenViewHeight - ViewMetrics.redViewHeight) / 2
        let redViewWidth = greenViewWidth - ViewMetrics.internalPadding * 2
        redView.frame = .init(
            x: ViewMetrics.internalPadding,
            y: redY,
            width: redViewWidth,
            height: ViewMetrics.redViewHeight)
    }
}

