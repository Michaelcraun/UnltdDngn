//
//  GameElements.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 10/31/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation
import SpriteKit

extension GameScene {
    
    func createHUD() {
        
        guard let musicURL = Bundle.main.url(forResource: "background", withExtension: "mp3") else { return }
        backgroundMusic = SKAudioNode(url: musicURL)
        addChild(backgroundMusic)
        
        menuButton = self.childNode(withName: "menuButton") as? SKSpriteNode
        continueButton = self.childNode(withName: "continueButton") as? SKSpriteNode
        
    }
    
    func createGameObjects() {
        
        guard let characterMap = childNode(withName: "characterMapNode") as? SKTileMapNode else { return }
        self.characterMap = characterMap
        
    }
    
    func createPlayer() {
        
        guard let characterTileSet = SKTileSet(named: "characters") else { fatalError("Object Tile Set not found") }
        
        let tileGroups = characterTileSet.tileGroups
        
        guard let runningCharacter = tileGroups.first(where: {$0.name == "maleCharacter_running" }) else {
            fatalError("No running character tile found")
        }
        
//        let runningAtlas = SKTextureAtlas(named: "maleCharacter_running")
//        let runningTexture = runningAtlas.textureNamed("maleCharacter_running")
//        runningPlayer = SKSpriteNode(texture: runningCharacter)
        
        let stillAtlas = SKTextureAtlas(named: "maleCharacter_still")
        let stillTexture = stillAtlas.textureNamed("maleCharacter_still")
        stillPlayer = SKSpriteNode(texture: stillTexture)
        
        let playerPosition = characterMap.centerOfTile(atColumn: 19, row: 13)
        stillPlayer?.position = playerPosition
        
        self.addChild(stillPlayer!)
        
    }
    
    func createTemporaryBat() {
        
        //        let batAtlas = SKTextureAtlas(named: "bat")
        //        let batTexture = batAtlas.textureNamed("bat")
        enemy = SKSpriteNode(imageNamed: "bat0.png")
        
        let enemyPosition = characterMap.centerOfTile(atColumn: 24, row: 13)
        enemy?.position = enemyPosition
        
        self.addChild(enemy!)
        
    }
}
