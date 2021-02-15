//
//  ViewController.swift
//  pong
//
//  Created by  on 15/02/2021.
//

import UIKit

class ViewController: UIViewController {
    let pad = UIView(frame: CGRect(x: 10, y: 700, width: 100, height: 40))
    let ball = UIView(frame: CGRect(x: 50, y: 50, width: 40, height: 40))
    var directionX: Float = 5.0
    var directionY: Float = 5.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ball.backgroundColor = .black
        self.view.addSubview(ball)
        
        pad.backgroundColor = .green
        self.view.addSubview(pad)
        
        let topRect = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 40))
        let leftRect = UIView(frame: CGRect(x: -10, y: 0, width: 10, height: self.view.frame.height))
        let rightRect = UIView(frame: CGRect(x: self.view.frame.width, y: 0, width: 10, height: self.view.frame.height))
        let bottomRect = UIView(frame: CGRect(x: 0, y: self.view.frame.height, width: self.view.frame.width, height: 10))
        self.view.addSubview(topRect)
        self.view.addSubview(leftRect)
        self.view.addSubview(rightRect)
        self.view.addSubview(bottomRect)
        
        Timer.scheduledTimer(withTimeInterval: 1.0/60.0, repeats: true) { (timer) in
            self.ball.center.x += CGFloat(self.directionX)
            self.ball.center.y += CGFloat(self.directionY)
            if self.ball.frame.intersects(self.pad.frame) || self.ball.frame.intersects(topRect.frame) {
                self.directionY = -self.directionY
            }
            
            if self.ball.frame.intersects(leftRect.frame) || self.ball.frame.intersects(rightRect.frame) {
                self.directionX = -self.directionX
            }
            
            if self.ball.frame.intersects(bottomRect.frame) {
                self.ball.center = self.view.center
            }
        }
    }
    
    func movePad(to: CGPoint) {
        pad.center = CGPoint(x: to.x, y: 720)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            movePad(to:touch.location(in: self.view))
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            movePad(to:touch.location(in: self.view))
        }
    }
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let touch = touches.first {
//        }
//    }


}

