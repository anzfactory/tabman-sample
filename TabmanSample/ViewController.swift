//
//  ViewController.swift
//  TabmanSample
//
//  Created by shingo asato on 2017/11/09.
//  Copyright © 2017年 shingo asato. All rights reserved.
//

import UIKit
import Tabman
import Pageboy

class ViewController: TabmanViewController {

    fileprivate var items: [UIViewController]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController viewDidLoad")
        items = [ChildViewController(), ChildViewController()]
        self.dataSource = self
        self.bar.items = [Item(title: "Child1"), Item(title: "Child2")]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController viewDidDisappear")
    }

}


extension ViewController: PageboyViewControllerDataSource {
    func viewControllers(forPageboyViewController pageboyViewController: PageboyViewController) -> [UIViewController]? {
        return self.items
    }
    
    func defaultPageIndex(forPageboyViewController pageboyViewController: PageboyViewController) -> PageboyViewController.PageIndex? {
        if self.items == nil {
            return nil
        } else {
            return .first
        }
    }
}

