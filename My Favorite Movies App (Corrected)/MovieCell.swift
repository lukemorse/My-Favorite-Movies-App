//
//  MovieCell.swift
//  My Favorite Movies App (Corrected)
//
//  Created by Luke Morse on 4/16/16.
//  Copyright © 2016 Luke Morse. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieLink: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieImg.image = movie.getMovieImg()
        movieDesc.text = movie.movieDesc
        movieLink.text = movie.link
    }
    
    
    
    
}
