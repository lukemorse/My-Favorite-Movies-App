//
//  SelectedMovieVC.swift
//  My Favorite Movies App (Corrected)
//
//  Created by Luke Morse on 4/16/16.
//  Copyright © 2016 Luke Morse. All rights reserved.
//

import UIKit

class SelectedMovieVC: UIViewController {
    
    var currentMovie: Movie!
    
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDesc: UILabel!
    
    @IBOutlet weak var movieLink: UILabel!
    
    @IBOutlet weak var movieImg: UIImageView!
    
    @IBOutlet weak var movieSynopsis: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieImg.image = currentMovie.getMovieImg()
        movieSynopsis.text = currentMovie.synopsis
        movieTitle.text = currentMovie.title
        movieDesc.text = currentMovie.movieDesc
        movieLink.text = currentMovie.link
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background-1.jpg")!)
    }
    
    func getCurrentMovie(movie: Movie) {
        currentMovie = movie
    }
    
    
}
