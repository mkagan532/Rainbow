//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Lambda_School_Loaner_232 on 1/28/20.
//  Copyright © 2020 Michael Kagan. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [
        MyColor(name: "Red", color: .red),
        MyColor(name: "Orange", color: .orange),
        MyColor(name: "Yellow", color: .yellow),
        MyColor(name: "Green", color: .green),
        MyColor(name: "Blue", color: .blue),
        MyColor(name: "Indigo", color: .cyan),
        MyColor(name: "Violet", color: .purple)
    ]
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    // Index Path (x = section, y = row)
    // First row of a tableview (0, 0)
    // (0, 1)
    // (0, 2)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.color
        return cell
    }

   
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // 1. Make sure you are using the correct segue
        if segue.identifier == "ToDetailViewController" {
        // 2. Get the instance of your detail view from your segue's destination
        // 3. Get the index path for the row the user tapped
            if let detailVC = segue.destination as? ColorDetailsViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                // 4. Initialize Color with indexPath
                let color = colors[indexPath.row]
                
                // 5. Pass the color to the detail view
                detailVC.cellColor = color
                
                
            }
    }

}
}
