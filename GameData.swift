//
//  GameData.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 10/31/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation
import CoreData

extension GameScene: NSFetchedResultsControllerDelegate {
    
    //MARK: - Retrieves character data
    func attemptFetch() {
        
        let fetchRequest: NSFetchRequest<Character> = Character.fetchRequest()
        let titleSort = NSSortDescriptor(key: "itemName", ascending: true)
        
        fetchRequest.sortDescriptors = [titleSort]
        
        let controller = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        controller.delegate = self
        self.controller = controller
        
        do {
            
            try controller.performFetch()
            
        } catch {
            
            let error = error as NSError
            print("\(error)")
            
        }
        
    }
}
