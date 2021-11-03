//
//  MovieDetailViewController.swift
//  MoviesApp
//
//  Created by Ferdi DEMİRCİ on 31.10.2021.
//

import UIKit

class MovieDetailViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelCat: UILabel!
    @IBOutlet weak var labelDuration: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var textSummary: UITextView!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: movie.imageWide)
        labelTitle.text = movie.title
        textSummary.text = movie.summary
        labelDuration.text = movie.duration
        labelRating.text = "⭐️ \(movie.rating)/10"
        labelCat.text = movie.categoriDescription
    }
    

}
