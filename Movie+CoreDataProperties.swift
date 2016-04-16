//
//  Movie+CoreDataProperties.swift
//  My Favorite Movies App (Corrected)
//
//  Created by Luke Morse on 4/16/16.
//  Copyright © 2016 Luke Morse. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var link: String?
    @NSManaged var movieDesc: String?
    @NSManaged var synopsis: String?
    @NSManaged var title: String?

}
