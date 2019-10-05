//
//  UsersViewController.swift
//  GoalGraph
//
//  Created by Jake Garcia on 9/29/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import UIKit
import RealmSwift
import MaterialComponents.MaterialButtons

class UsersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let realm = try! Realm()
    var users: Results<User>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        loadUsers()
    }
//    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
//
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        
        if let usersArr = users {
            let user = usersArr[indexPath.row]
            
            cell.textLabel?.text = "\(user.fName) \(user.lName)"
        } else {
            cell.textLabel?.text = "Welcome, add your first user."
        }
        
        return cell
    }

    @IBAction func addUserPressed(_ sender: MDCFloatingButton) {
        performSegue(withIdentifier: "goToAddUser", sender: sender)
    }
    
    
    // MARK: - Load Users for table info
    
    func loadUsers() {
        users = realm.objects(User.self)
        
    }

}
