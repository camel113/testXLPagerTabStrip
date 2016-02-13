//
//  SecontTableViewController.swift
//  testPagerNavigation
//
//  Created by Adrien Bigler on 13/02/16.
//  Copyright © 2016 abg Test. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class SecontTableViewController: UITableViewController, IndicatorInfoProvider {
    
    var myArray = ["ABCD","EFG","HIJK","LMNOP","QRST","UVXYZ"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myArray.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyRandomTableViewCell", forIndexPath: indexPath) as! MyRandomTableViewCell

        cell.myLabel.text = myArray[indexPath.row]

        return cell
    }


    func indicatorInfoForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "My second view controller")
    }

}
