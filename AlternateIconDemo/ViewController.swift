//
//  ViewController.swift
//  AlternateIconDemo
//
//  Created by iosci on 2017/5/10.
//  Copyright © 2017年 secoo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if !UIApplication.shared.supportsAlternateIcons {
      print("not support")
      return
    }
    var name: String? = nil
    if 1 == indexPath.row {
      name = "NewAppIcon"
    }
    UIApplication.shared.setAlternateIconName(name) { (error) in
      print(error ?? "success")
    }
  }

}

