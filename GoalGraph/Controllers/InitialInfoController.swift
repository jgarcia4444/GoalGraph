//
//  InitialInfoController.swift
//  GoalGraph
//
//  Created by Jake Garcia on 9/29/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import UIKit
import RealmSwift
class InitialInfoController: UIViewController {
    
    
    @IBOutlet weak var fNameTextField: UITextField!
    @IBOutlet weak var lNameTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var heightPicker: UIPickerView!
    @IBOutlet weak var weightTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        
//        performSegue(withIdentifier: "goToHomepage", sender: Any?.self)
    }
    
    func authenticateUser() {
        guard let fName = fNameTextField.text else {
            showAlert(title: "First Name needed.")
        }
        
        guard let lName = lNameTextField.text else {
            showAlert(title: "Last Name needed.")
        }
        
    }
    
    func showAlert(title: String) {
        
        let alert = UIAlertController(title: title, message: "Please enter the info required", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .cancel) { (<#UIAlertAction#>) in
            alert.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(action)
        
        present(alert, animated: true)
        
    }
    
}
