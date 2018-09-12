//
//  FirstViewController.swift
//  TestAppleTVApp
//
//  Created by YevhenHerasymenko on 9/11/18.
//  Copyright © 2018 Ciklum. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  @IBOutlet weak var button1: UIButton!
  @IBOutlet weak var button2: UIButton!
  @IBOutlet weak var button3: UIButton!
  @IBOutlet weak var button4: UIButton!
  @IBOutlet weak var button5: UIButton!
  @IBOutlet weak var button6: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

    let focusGuide = UIFocusGuide()

    view.addLayoutGuide(focusGuide)

    focusGuide.widthAnchor.constraint(equalTo: button1.widthAnchor).isActive = true
    focusGuide.leftAnchor.constraint(equalTo: button1.leftAnchor).isActive = true
    focusGuide.topAnchor.constraint(equalTo: button1.bottomAnchor).isActive = true
    focusGuide.bottomAnchor.constraint(equalTo: button2.topAnchor).isActive = true

    focusGuide.preferredFocusEnvironments = [button6]
  }

  override var preferredFocusEnvironments: [UIFocusEnvironment] {
    return [button3]
  }

  @IBAction func action() {
    setNeedsFocusUpdate()
    updateFocusIfNeeded()
  }

  override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
    if context.nextFocusedView == button4 {
      button1.setTitle("Ololo", for: .normal)
    } else {
      button1.setTitle("Button1", for: .normal)
    }
  }
}

