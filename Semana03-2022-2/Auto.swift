//
//  Auto.swift
//  Semana03-2022-2
//
//  Created by Mac41 on 9/09/22.
//

import Foundation

class Auto {
    var brand:String = "toyota"
    var model:String = "Pickup"
    var color:String = "Negro"
    var speed: Float = 60.5
    
    func move(moreSpeed: Float) {
        speed += moreSpeed
        if speed > 160{
            self.stop()
        }
    }
    
    func stop(){
        print("Auto stopped")
        speed = 0.0
    }
    
    func slowDown(lessSpeed:Float){
        speed -= lessSpeed
        if speed < 0 {
            move(moreSpeed: lessSpeed)
        
        }
    }

}
