//
//  ViewController.swift
//  testPagerNavigation
//
//  Created by Adrien Bigler on 13/02/16.
//  Copyright © 2016 abg Test. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override public func viewControllersForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return [FirstViewController(),SecontTableViewController()]
    }


}

