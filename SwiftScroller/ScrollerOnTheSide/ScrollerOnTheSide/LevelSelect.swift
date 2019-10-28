//
//  LevelSelect.swift
//  CatcherOfTheColor
//
//  Created by Harrison Orsbourne on 14/10/19.
//  Copyright © 2019 Harrison Orsbourne. All rights reserved.
//

import SpriteKit

class LevelSelect: SKScene{

    //title label
    var titleLabel : SKLabelNode!
    //level buttons
    var levelOneLabel : SKLabelNode!
    var levelTwoLabel : SKLabelNode!
    
    
    override func didMove(to view: SKView) {
        
        // making the title label
        titleLabel = SKLabelNode();
        titleLabel.text = "Level Select"
        titleLabel.fontSize = 68.0
        titleLabel.fontName = "AvenirNext-Bold"
        titleLabel.fontColor = UIColor.white
        titleLabel.position = CGPoint(x : self.frame.midX, y: self.frame.midY*1.75)
        self.addChild(titleLabel);
        
        // making level one label
        levelOneLabel = SKLabelNode();
        levelOneLabel.text = "Level Two"
        levelOneLabel.fontSize = 32.0
        levelOneLabel.fontName = "AvenirNext-Bold"
        levelOneLabel.fontColor = UIColor.white
        levelOneLabel.position = CGPoint(x : self.frame.midX * 1.25, y: self.frame.midY*1.25)
        self.addChild(levelOneLabel);
        
        // making level two label
        levelTwoLabel = SKLabelNode();
        levelTwoLabel.text = "Level One"
        levelTwoLabel.fontSize = 32.0
        levelTwoLabel.fontName = "AvenirNext-Bold"
        levelTwoLabel.fontColor = UIColor.white
        levelTwoLabel.position = CGPoint(x : self.frame.midX / 1.25, y: self.frame.midY*1.25)
        self.addChild(levelTwoLabel);
        
        
        
        self.backgroundColor = UIColor.black
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first?.location(in: self)
        if(levelOneLabel.contains(location!)){
            let newScene = LevelOne(size:(self.view?.bounds.size)!)
            let transition = SKTransition.reveal(with: .down, duration: 2)
            self.view?.presentScene(newScene, transition: transition)
            transition.pausesOutgoingScene = true
            transition.pausesIncomingScene = false
        }
        if(levelTwoLabel.contains(location!)){
            let newScene = GameScene(size:(self.view?.bounds.size)!)
            let transition = SKTransition.reveal(with: .down, duration: 2)
            self.view?.presentScene(newScene, transition: transition)
            transition.pausesOutgoingScene = true
            transition.pausesIncomingScene = false
        }
    }
}
