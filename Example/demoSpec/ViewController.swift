//
//  ViewController.swift
//  demoSpec
//
//  Created by oakahn on 08/26/2020.
//  Copyright (c) 2020 oakahn. All rights reserved.
//

import UIKit
import demoSpec

class ViewController: UIViewController {

    @IBOutlet weak var titleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleButton.addTarget(self, action: #selector(titleButtonTap), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func titleButtonTap() {
        let storyboard = UIStoryboard(name: "Util", bundle: Bundle(for: UtilViewController.self))
        let vc = storyboard.instantiateInitialViewController()
        navigationController?.pushViewController(vc!, animated: true)
    }

}

