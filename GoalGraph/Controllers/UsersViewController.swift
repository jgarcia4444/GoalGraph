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
    var selectedUser: User?
    
    @IBOutlet weak var usersTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usersTableView.delegate = self
        usersTableView.dataSource = self
        
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
    
    // MARK: - TableView Delegate Methods
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        usersTableView.deselectRow(at: indexPath, animated: true)
        guard let user = users?[indexPath.row] else {
            fatalError("Unable to use users Results.")
        }
        selectedUser = user
        usersTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationVC = segue.destination as? UserWeightDataViewController {
            
            destinationVC.selectedUser = self.selectedUser
            
        }
        
    }
    

}
