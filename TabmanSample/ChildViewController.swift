//
//  ChildViewController.swift
//  TabmanSample
//
//  Created by shingo asato on 2017/11/09.
//  Copyright © 2017年 shingo asato. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {
    
    fileprivate var button: UIButton? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ChildViewController viewDidLoad")
        self.setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ChildViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ChildViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ChildViewController viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ChildViewController viewDidDisappear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.button?.center = self.view.center
    }
}

extension ChildViewController {
    fileprivate func setupUI() {
        
        self.view.backgroundColor = .white
        
        let btn = UIButton(type: .system)
        btn.setTitle("Tap me!!", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(type(of: self).tapButton), for: .touchUpInside)
        var frame = btn.frame
        frame.size.width = 140
        frame.size.height = 44.0
        btn.frame = frame
        self.view.addSubview(btn)
        self.button = btn
        
    }
    
    func tapButton() {
        let vc = GrandChildViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
