//
//  TableViewController.swift
//  classNo3
//
//  Created by clement on 2019/10/15.
//  Copyright © 2019 clement. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var foodlist: [food]  = [food] ()
    func initfood(){
        if loadFoodFile()==nil {
            foodlist.append(food(name:"cake",adescription: "sweet"))
            foodlist.append(food(name: "ham", adescription: "acid"))
        }else{
            foodlist=loadFoodFile()!
        }
    }
    func saveFoodFile(){
        let success = NSKeyedArchiver.archiveRootObject(foodlist, toFile: food.AchiverURL.path)
        if !success{
            print("Failed...")
        }
    }
    func loadFoodFile()->[food]?{
        return (NSKeyedUnarchiver.unarchiveObject(withFile: food.AchiverURL.path) as? [food])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initfood()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func cancalToList (segue: UIStoryboardSegue){
        
    }
    
    @IBAction func saveTiList (segue:UIStoryboardSegue){
        if let addFoodVC = segue.source as? foodViewController{
            if let addFood = addFoodVC.foodForEdit{
                if let selcetedIndexPath = tableView.indexPathForSelectedRow{
                    foodlist[(selcetedIndexPath as NSIndexPath).row] = addFood
                    tableView.reloadRows(at: [selcetedIndexPath], with: .none)
                } else{
                    foodlist.append(addFood)
                    let newIndexPath = IndexPath(row: foodlist.count-1, section: 0)
                    tableView.insertRows(at: [newIndexPath], with: .automatic)
                }
            }
        }
        saveFoodFile()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodlist.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text=foodlist[indexPath.row].name
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            foodlist.remove(at: indexPath.row)
            saveFoodFile()
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier=="show"{
            let descriptionVC = segue.destination as! foodViewController
        
            if let selected = sender as? UITableViewCell{
                let indexPath = tableView.indexPath(for: selected)!
                let selectedFood = foodlist[(indexPath as NSIndexPath).row]
                descriptionVC.foodForEdit = selectedFood
            }
        }else if segue.identifier=="add"{
            
        }
    }
    

}
