//
//  ViewController.swift
//  RouteTest
//
//  Created by Ivan C Myrvold on 03/06/2021.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBSegueAction func makeSwiftUI(_ coder: NSCoder) -> UIViewController? {
        let viewRouter = ViewRouter(step: .test1)
        return UIHostingController(coder: coder, rootView: Test1(router: viewRouter))
    }
    
}

