//
//  NewMovieVC.swift
//  My Favorite Movies App (Corrected)
//
//  Created by Luke Morse on 4/16/16.
//  Copyright © 2016 Luke Morse. All rights reserved.
//

import UIKit
import CoreData

class NewMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieDesc: UITextField!
    @IBOutlet weak var movieLink: UITextField!
    @IBOutlet weak var moviePlot: UITextField!
    @IBOutlet weak var movieImg: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        movieImg.layer.cornerRadius = 10.0
        movieImg.clipsToBounds = true
        
        movieTitle.delegate = self
        movieDesc.delegate = self
        movieLink.delegate = self
        moviePlot.delegate = self
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background-1.jpg")!)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func onDoneBtnPressed(sender: AnyObject!) {
        if let title = movieTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            movie.title = title
            movie.movieDesc = movieDesc.text
            movie.link = movieLink.text
            movie.setMovieImg(movieImg.image!)
            movie.synopsis = moviePlot.text
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save recipe")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    
    
    
}
