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
import RealmSwift


class AddUserViewController: UIViewController, UITextFieldDelegate {
    let realm = try! Realm()
    @IBOutlet weak var fNameTextField: MDCTextField!
    @IBOutlet weak var lNameTextField: MDCTextField!
    var fNameController: MDCTextInputControllerOutlined?
    var lNameController: MDCTextInputControllerOutlined?
    override func viewDidLoad() {
        super.viewDidLoad()
        fNameTextField.delegate = self
        lNameTextField.delegate = self
        fNameController = MDCTextInputControllerOutlined(textInput: fNameTextField)
        lNameController = MDCTextInputControllerOutlined(textInput: lNameTextField)
        
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func addButtonPressed(_ sender: MDCButton) {
        
        let newUser = User()
        let userNameInfo = verifyName(fName: fNameTextField.text!, lName: lNameTextField.text!)
        guard let firstName = userNameInfo["fName"] else {
            fatalError("Unable to retrieve given first name from text field")
        }
        guard let lastName = userNameInfo["lName"] else {
            fatalError("Unable to retrieve given last name from text field")
        }
        
        newUser.fName = firstName
        newUser.lName = lastName
        
        do {
            try realm.write {
                realm.add(newUser)
            }
        } catch {
            print("There was an error adding the new user to the realm database.")
        }
        
        fNameTextField.text = ""
        lNameTextField.text = ""
        
    }
    // TODO: - Handle validation errors.
    func verifyName(fName: String, lName: String) -> [String: String] {
        var nameDict = [String: String]()
        
        if fName.count > 0 {
            nameDict["fName"] = fName.capitalized
        }
        
        if lName.count > 0 {
            nameDict["lName"] = lName.capitalized
        }
        print(nameDict)
        return nameDict
        
    }
    
}
