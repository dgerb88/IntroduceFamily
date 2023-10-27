//
//  TableViewController.swift
//  Introduce Familia
//
//  Created by Dax Gerber on 10/27/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var listOfFamilyMembers = 
    [
    familyMember(name: "Dad",
                image: "dax",
                description: "Dax currently works as a physical therapist, but is interested in a change of career into IOS development. In his spare time, he enjoys playing sports, 3D printing things, and doing projects around the house."),
    familyMember(name: "Mom",
                 image: "kylie",
                 description: "Kylie is the beautiful mother of 2 kiddos. She works as a nurse PRN but primarily stays home with the kids. She enjoys designing things, getting out of the house to do something fun, and chocolate in any form"),
    familyMember(name: "Navy",
                 image: "navy",
                 description: "Navy is 1 1/2 years old. She likes snacks, is a complete daredevil, and is a mama's girl through and through."),
    familyMember(name: "Koen",
                 image: "koen",
                 description: "Koen is 3 1/2 years old. He enjoys playing with cars, building blocks, and fixing things. He has also decided that he would like to be spider-man for halloween this year.")
    ]
    
    
    
    var indexRow = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfFamilyMembers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "member", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = listOfFamilyMembers[indexPath.row].name
        cell.contentConfiguration = content
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        indexRow = indexPath.row
        return indexPath
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SecondViewController
        destination.familyMember = listOfFamilyMembers[indexRow]
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
   

}
