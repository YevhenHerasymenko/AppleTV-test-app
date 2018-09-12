//
//  SecondViewController.swift
//  TestAppleTVApp
//
//  Created by YevhenHerasymenko on 9/11/18.
//  Copyright © 2018 Ciklum. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

    cell.textLabel?.text = "Index \(indexPath.row)"

    return cell
  }

  override func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
    return indexPath.row != 5
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard indexPath.row == 7 else {
      return
    }
    setNeedsFocusUpdate()
    updateFocusIfNeeded()
  }

  override func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath? {
    return IndexPath(row: 2, section: 0)
  }

}

