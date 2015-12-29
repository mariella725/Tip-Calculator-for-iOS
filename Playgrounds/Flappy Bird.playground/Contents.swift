//: Playground - noun: a place where people can play

import UIKit
import SpriteKit

class gameScene: SKScene {
    var trump = SKSpriteNode()
    var pipeUpTexture = SKTexture()
    var pipeDownTexture = SKTexture()
    var pipeMoveAndRemove = SKAction()
    
    
    override func didMoveToView(view: SKView) {
        /* Set up Scene Here */
        
        //Physics
        
        self.physicsWorld.gravity = CGVectorMake(0.0, -5.0);
        
        //Trump
        let trumpTexture = SKTexture(imageNamed: "Trump")
        trumpTexture.filteringMode = SKTextureFilteringMode.Nearest
        
        trump = SKSpriteNode(texture: trumpTexture)
        trump.setScale(0.5)
        trump.position = CGPoint(x: self.frame.size.width * 0.35, y: self.frame.size.height * 0.6)
        
        trump.physicsBody! = SKPhysicsBody(circleOfRadius: trump.size.height/2.0)
        trump.physicsBody!.dynamic = true
        trump.physicsBody!.allowsRotation = false
        
        self.addChild(trump)
        
        
        //Ground
        
        let groundTexture = SKTexture(imageNamed: "ground")
        
        let sprite = SKSpriteNode(texture: groundTexture)
        sprite.setScale(2.0)
        sprite.position = CGPointMake(self.size.width/2, sprite.size.height/2)
        self.addChild(sprite)
        
        let ground = SKNode()
        
        ground.position = CGPointMake(0, groundTexture.size().height)
        ground.physicsBody! = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, groundTexture.size().height * 2.0))
        
        ground.physicsBody!.dynamic = false
        self.addChild(ground)
        
        //Pipes
        
        pipeUpTexture = SKTexture(imageNamed: "pipeUp")
        pipeDownTexture = SKTexture(imageNamed: "pipeDown")
        
        //movement of Pipes
        
        let _ = CGFloat(self.frame.size.width * 2.0 * pipeUpTexture.size().width)
        
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch: AnyObject in touches {
            
            _ = touch.locationInNode(self)
            
            trump.physicsBody!.velocity = CGVectorMake(0,0)
            trump.physicsBody!.applyImpulse(CGVectorMake(0, 25))
        }
        
    }
    override func update(currentTime: CFTimeInterval) {
        
    }
}

