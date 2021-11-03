//
//  MovieTableViewCell.swift
//  MoviesApp
//
//  Created by Ferdi DEMİRCİ on 31.10.2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var labelCategori: UILabel!
    @IBOutlet weak var imagePoster: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func prepare(movie: Movie) {
        imagePoster.image = UIImage(named: movie.imageWide)
        labelTitle.text = movie.title
        labelSummary.text = movie.summary
        labelRating.text = "⭐️ \(movie.rating)/10"
        labelCategori.text = movie.categoriDescription 
    }
}
