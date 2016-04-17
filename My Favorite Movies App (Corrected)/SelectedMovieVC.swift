//
//  SelectedMovieVC.swift
//  My Favorite Movies App (Corrected)
//
//  Created by Luke Morse on 4/16/16.
//  Copyright © 2016 Luke Morse. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    
    override public var description: String {
        let id = identifier ?? ""
        return "id: \(id), constant: \(constant)" //you may print whatever you want here
    }
}

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
        movieImg.layer.cornerRadius = 10.0
        movieImg.clipsToBounds = true
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
