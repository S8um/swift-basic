//
//  Apple.swift
//  Snake
//
//  Created by admin on 08.06.2020.
//  Copyright © 2020 LearnLab. All rights reserved.
//

import UIKit
import SpriteKit

class Apple: SKShapeNode {
    // Определяем, как будет рисоваться яблоко
    convenience init(position: CGPoint) {
        self.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        
        fillColor = UIColor.red
        strokeColor = UIColor.red
        
        lineWidth = 5
        
        self.position = position
        
        // Добавляем физическое тело, совпадающее с изображением яблока
        self.physicsBody = SKPhysicsBody(circleOfRadius: 10.0, center: CGPoint(x: 5, y: 5))
        
        // Категория - яблоко
        self.physicsBody?.categoryBitMask = CollisionCategories.Apple
    }
}
