//
//  GameScene.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 9/3/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//
//  Sounds and music provided by Kenny.nl. Thank you!
//  Artwork provided by Kenny.nl. Thank you!

import SpriteKit
import GameplayKit
import CoreData

class GameScene: SKScene {
    
    //MARK: CoreData variables
    var controller: NSFetchedResultsController<Character>!
    
    //MARK: Sounds
    let tapNoise = SKAction.playSoundFileNamed("tap.wav", waitForCompletion: false)
    var backgroundMusic: SKAudioNode!
    
    //MARK: Buttons
    var menuButton: SKSpriteNode?
    var continueButton: SKSpriteNode?
    
    //MARK: Game Components
    var gameMenu: SKScene!
    var runningPlayer: SKSpriteNode?
    var stillPlayer: SKSpriteNode?
    var characterMap: SKTileMapNode!
    var enemy: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        createHUD()
        createGameObjects()
        createPlayer()
        createTemporaryBat()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        run(tapNoise)
        
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.nodes(at: pos).first
            
            if node?.name == "menuButton" {
                
                let transition = SKTransition.fade(withDuration: 0.1)
                gameMenu = SKScene(fileNamed: "GameMenuScene")
                gameMenu.scaleMode = .aspectFit
                self.view?.presentScene(gameMenu, transition: transition)
                
            } else if node?.name == "continueButton" {
                
                proceed()
                
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func update(_ currentTime: TimeInterval) {
     
        
    }
}
