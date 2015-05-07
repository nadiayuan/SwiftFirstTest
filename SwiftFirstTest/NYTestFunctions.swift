//
//  NYTestFunctions.swift
//  SwiftFirstTest
//
//  Created by nadia on 15-3-25.
//  Copyright (c) 2015年 叶媛媛. All rights reserved.
//

import Foundation

func testStudyCodeFunctions()
{
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int     // ????
{
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward : stepForward
}

func testChooseStepFunction ()
{
    var currentValue = -4
    let moveNearerToZero = chooseStepFunction(currentValue > 0)
    
    // moveNearerToZero now refers to the nested stepForward() function
    while currentValue != 0
    {
        println("\(currentValue)... ")
        currentValue = moveNearerToZero(currentValue)
    }
    println("zero!")
    // -4...
    // -3...
    // -2...
    // -1... 18.// zero!
}


