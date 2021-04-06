//
//  DetailsViewController.swift
//  ClassesDemo
//
//  Created by Mahmoud Mohamed on 31/03/2021.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var titleShow: UILabel!
    
    @IBOutlet weak var ratingShow: UILabel!
    
    
    @IBOutlet weak var releaseShow: UILabel!
    
    @IBOutlet weak var genreShow: UILabel!
    
    var movie:Movies?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleShow.text = movie?.title
        ratingShow.text = String(movie!.rating)
        releaseShow.text = String(movie!.releaseDate)
        genreShow.text = movie?.genre.joined(separator: ",")
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
