//
//  RootViewController.swift
//  challenge2.2.1
//
//  Created by Anatol Yarmalovich on 08/10/2023.
//

import UIKit

public final class RootViewController: UIViewController {

    //MARK: Private

    private enum ViewMetrics {
        static let externalPadding: CGFloat = 50.0
        static let internalPadding: CGFloat = 25.0
        static let redHeight: CGFloat = 100.0
    }

    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleTopMargin, .flexibleBottomMargin]
        return view
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        greenView.addSubview(redView)
        // Do any additional setup after loading the view.
    }

    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        if greenView.superview == nil {
            view.addSubview(greenView)

            let containerWidth = view.bounds.width
            let containerHeight = view.bounds.height

            let greenWidth = containerWidth - 2 * ViewMetrics.externalPadding
            let greenHeight = containerHeight - 2 * ViewMetrics.externalPadding
            greenView.frame = .init(
                x: ViewMetrics.externalPadding,
                y: ViewMetrics.externalPadding,
                width: greenWidth,
                height: greenHeight)

            let redWidth = greenWidth - 2 * ViewMetrics.internalPadding
            let redY = (greenHeight - ViewMetrics.redHeight) / 2
            redView.frame = .init(
                x: ViewMetrics.internalPadding,
                y: redY,
                width: redWidth,
                height: ViewMetrics.redHeight)
        }
    }
}

