//
//  DraggedImage.swift
//  AdditionApp
//
//  Created by Dex on 18/02/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import UIKit

class DraggedImage: UIImageView {

    var startLocation: CGPoint?
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        startLocation = touches.first?.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let currentLocation = touches.first?.locationInView(self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPointMake(self.center.x+dx, self.center.y+dy)
        
    }


}
