//
//  WelcomeViewController.swift
//  GoalGraph
//
//  Created by Jake Garcia on 11/13/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var viewBottomLayoutConstraint: NSLayoutConstraint!
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: Selector(("keyboardDidShow")), name: UIView.keyboardWillShowNotification , object: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func keyboardDidShow(_ notification: Notification) {
        updateBottomConstraint(_: notification)
    }

    func updateBottomConstraint(_ notification: Notification) {
        
    }
    
}
