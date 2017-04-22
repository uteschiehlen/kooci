//
//  Recipe.swift
//  kooci
//
//  Created by Ute Schiehlen on 23.04.17.
//  Copyright © 2017 Ute Schiehlen. All rights reserved.
//

import Foundation

class Recipe {
    
    var steps = [Step]()
    var name: String
    
    var currentStep = 0
    
    public init(name: String, steps: [Step]) {
        self.name = name
        self.steps = steps
    }
    
    func start() {
        currentStep = 0
        // gestureManager.delegate = self
        nextStep()
    }
    
    func nextStep() {
        let step = steps[currentStep]
        // gestureManager.gesture = step.gestures
    }
}

// gesture delegate
extension Recipe {
    
    //didFinish
    //currentStep++
    //nextStep
}
