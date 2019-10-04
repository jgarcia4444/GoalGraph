//
//  AddUserViewController.swift
//  GoalGraph
//
//  Created by Jake Garcia on 10/2/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons
import MaterialComponents.MaterialTextFields


class AddUserViewController: UIViewController {

    @IBOutlet weak var fName: MDCTextField!
    
    @IBOutlet weak var lName: MDCTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
    }
    
    
   
    @IBAction func addButtonPressed(_ sender: MDCButton) {
    }
    
}
