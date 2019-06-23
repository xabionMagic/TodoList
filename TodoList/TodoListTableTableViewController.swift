//
//  TodoListTableTableViewController.swift
//  TodoList
//
//  Created by Saroj on 5/14/19.
//  Copyright © 2019 Saroj. All rights reserved.
//

import UIKit

class TodoListTableTableViewController: UITableViewController {

    var itemArray = ["Find Mike", "Buy Eggs", "iOS Stuff"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewItem))
        
      

    }

    @objc func addNewItem() {
        
        var textField = UITextField()
        
        let ac = UIAlertController(title: "Enter Item", message: nil, preferredStyle: .alert)
        ac.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) { action in
            
            self.itemArray.append(textField.text!)
            //print(self.itemArray)
            self.tableView.reloadData()
       }
        
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    
    func submit(answer: String) {
        
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
       return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
       
        return cell
    }
    
    //MARK - TableView Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row])
        
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
                tableView.cellForRow(at: indexPath)?.accessoryType = .none
            }
            else {
                tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    
 }
