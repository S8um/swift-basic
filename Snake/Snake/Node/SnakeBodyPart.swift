//
//  SnakeBodyPart.swift
//  Snake
//
//  Created by admin on 08.06.2020.
//  Copyright © 2020 LearnLab. All rights reserved.
//

import UIKit
import SpriteKit

class SnakeBodyPart: SKShapeNode {
    let diameter = 10.0
    
    
    init(atPoint point: CGPoint) {
        super.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: diameter, height: diameter)).cgPath
        
        fillColor = UIColor.green
        strokeColor = UIColor.green
        lineWidth = 5
        
        self.position = point
        
        // Создаем физическое тело
        self.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(diameter - 4), center: CGPoint(x: 5, y:5))
        // Может перемещаться в пространстве
        self.physicsBody?.isDynamic = true
        // Категория - змея
        self.physicsBody?.categoryBitMask = CollisionCategories.Snake
        // пересекается с границами экрана и яблоком
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
