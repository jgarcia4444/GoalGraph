//
//  InitialViewController.swift
//  GoalGraph
//
//  Created by Jake Garcia on 9/29/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons

class InitialViewController: UIViewController {
    
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let quoteArr = Quotes().quoteArr
        
        quoteLabel.text = quoteArr[0]
        
    }

    @IBAction func nextPagePressed(_ sender: MDCRaisedButton) {
        
        performSegue(withIdentifier: "goToUsers", sender: Any.self)
        
    }
}
