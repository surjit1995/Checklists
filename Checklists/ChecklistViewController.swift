//
//  ViewController.swift
//  Checklists
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Surjit. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return 500 }
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) ->
        UITableViewCell
    
    
    {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "ChecklistItem", for: indexPath)
            let label = cell.viewWithTag(1000) as! UILabel
            if indexPath.row % 5 == 0 {
                label.text = "Surjit"
            } else if indexPath.row % 5 == 1 {
                label.text = "Surjit"
            } else if indexPath.row % 5 == 2 {
                label.text = "Surjit"
            } else if indexPath.row % 5 == 3 {
                label.text = "Surjit"
            } else if indexPath.row % 5 == 4 {
                label.text = "Surjit"
            }
                return cell
            
    }
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

