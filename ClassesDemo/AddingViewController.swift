//
//  AddingViewController.swift
//  ClassesDemo
//
//  Created by Mahmoud Mohamed on 01/04/2021.
//

import UIKit

class AddingViewController: UIViewController {

    var movie = Movies();
    var delegateClass:AddingMovie!
    override func viewDidLoad() {
        super.viewDidLoad()
        releaseDate.keyboardType = UIKeyboardType.numberPad
        movieRating.keyboardType = UIKeyboardType.numbersAndPunctuation
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var showError: UILabel!
    @IBOutlet weak var movieTitle: UITextField!
    
    
    @IBOutlet weak var releaseDate: UITextField!
    
    @IBOutlet weak var movieRating: UITextField!
    
    @IBAction func doneBtn(_ sender: UIBarButtonItem) {
        if movieTitle.text?.isEmpty ?? true || (releaseDate.text?.isEmpty ?? true) {
            showError.text = "Please Fill the blank"
        }else{
        movie.title = movieTitle.text ?? ""
        movie.releaseDate = Int(releaseDate.text ?? "") ?? 0
        movie.rating = Float(movieRating.text ?? "") ?? 0.0
        
        delegateClass.addingMovie(movie: movie)
        self.navigationController?.popViewController(animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
