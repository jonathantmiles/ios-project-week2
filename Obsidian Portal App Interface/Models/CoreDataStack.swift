//
//  CoreDataStack.swift
//  Obsidian Portal App Interface
//
//  Created by Jonathan T. Miles on 9/27/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let shared = CoreDataStack()
    
    lazy var container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Obsidian_Portal_App_Interface")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error {
                fatalError("Failed to load persistent store: \(error)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
        
        return container
    } ()
    
    var mainContext: NSManagedObjectContext {
        return container.viewContext
    }
}
