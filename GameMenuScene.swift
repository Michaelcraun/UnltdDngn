//
//  GameMenuScene.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 10/30/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import SpriteKit

class GameMenuScene: SKScene {
    
    //MARK: Sounds
    let tapNoise = SKAction.playSoundFileNamed("tap.wav", waitForCompletion: false)
    var backgroundMusic: SKAudioNode!
    
    //MARK: Buttons
    var menuButton: SKSpriteNode?
    var levelLabel: SKLabelNode?
    var strUpButton: SKSpriteNode?
    var dexUpButton: SKSpriteNode?
    var conUpButton: SKSpriteNode?
    var intUpButton: SKSpriteNode?
    var wisUpButton: SKSpriteNode?
    var chaUpButton: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        createHUD()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        run(tapNoise)
        
        if let touch = touches.first {
            
            let pos = touch.location(in: self)
            let node = self.nodes(at: pos).first
            
            if node?.name == "menuButton" {
                
                let transition = SKTransition.fade(withDuration: 0.1)
                if let gameScene = SKScene(fileNamed: "GameScene") {
                    
                    gameScene.scaleMode = .aspectFit
                    self.view?.presentScene(gameScene, transition: transition)
                    
                }
                
            } else if node?.name == "strengthPlus" {
                
                print("strUp pressed")
                
            }
        }
    }
    
    func createHUD() {
        
        if let musicURL = Bundle.main.url(forResource: "menu", withExtension: "wav") {
            
            backgroundMusic = SKAudioNode(url: musicURL)
            addChild(backgroundMusic)
            
        }
        
        menuButton = self.childNode(withName: "menuButton") as? SKSpriteNode
        levelLabel = self.childNode(withName: "levelLabel") as? SKLabelNode
        strUpButton = self.childNode(withName: "strengthPlus") as? SKSpriteNode
        dexUpButton = self.childNode(withName: "dexterityPlus") as? SKSpriteNode
        conUpButton = self.childNode(withName: "constitutionPlus") as? SKSpriteNode
        intUpButton = self.childNode(withName: "intelligencePlus") as? SKSpriteNode
        wisUpButton = self.childNode(withName: "wisdomPlus") as? SKSpriteNode
        chaUpButton = self.childNode(withName: "charismaPlus") as? SKSpriteNode
        
    }
}
