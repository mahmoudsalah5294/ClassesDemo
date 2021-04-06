//
//  TableViewController.swift
//  ClassesDemo
//
//  Created by Mahmoud Mohamed on 31/03/2021.
//

import UIKit

class TableViewController: UITableViewController,AddingMovie {
    
    
    var movies:[Movies] = []
    var rowNum:Int = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var m1 = Movies(title: "Dawn of the Planet of the Apes", image: "https://api.androidhive.info/json/movies/1.jpg",rating: 6.5,releaseDate: 2014,genre: ["Action","Drama"])
        
        var m2 = Movies(title: "District 9", image: "https://api.androidhive.info/json/movies/2.jpg",rating: 6.0,releaseDate: 2009,genre: ["Action","Drama"])
        
        var m3 = Movies(title: "Transformers: Age of Extinction", image: "https://api.androidhive.info/json/movies/3.jpg",rating: 7.0,releaseDate: 2014,genre: ["Action","Drama"])
        
        var m4 = Movies(title: "X-Men: Days of Future Past", image: "https://api.androidhive.info/json/movies/4.jpg",rating: 7.5,releaseDate: 2014,genre: ["Action","Drama"])
        
        var m5 = Movies(title: "The Machinist", image: "https://api.androidhive.info/json/movies/5.jpg",rating: 6.5,releaseDate: 2004,genre: ["Action","Drama"])
        
        
        movies = [m1,m2,m3,m4,m5]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = movies[indexPath.row].title

        return cell
    }
    
    func addingMovie(movie: Movies) {
        movies.append(movie)
        self.tableView.reloadData()
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

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        rowNum = to.row
    }
    

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.destination == storyboard?.instantiateViewController(withIdentifier: "detailsScreen"){}
        
        
        if segue.identifier == "detailsSegue" {
            let selectedRow = self.tableView.indexPathForSelectedRow
            
            let detialsScreen = segue.destination as! DetailsViewController
            
            detialsScreen.movie = movies[selectedRow!.row]
        }else if segue.identifier == "addScreen" {
            let addingScreen = segue.destination as! AddingViewController
            
            addingScreen.delegateClass = self
        }
        
        
        
        
        
        
    }

}




