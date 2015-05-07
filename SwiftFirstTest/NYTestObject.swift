//
//  NYTestObject.swift
//  SwiftFirstTest
//
//  Created by nadia on 14-8-7.
//

import Foundation

class NYTestObject
{
    func testObject()
    {
//        testFor()
    }
    
    func testFuctions()
    {
        testStudyCodeFunctions()
    }
    
    func testFor()
    {
        for index in 1...5      // 1, 2, 3, 4, 5
        {
            println("index: \(index)")
        }
        
        for _ in 1...5
        {
            println(" _ is for index is not needed")
        }
        
        // string
        for character in "strings"
        {
            println("Character is : \(character)")
        }
        
        // array
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names
        {
            println("Hello, \(name)!")
        }
        
        for (index, name) in enumerate(names)
        {
            println("index : \(index) with name : \(name)")
        }
        
        // dic
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs
        {
            println("\(animalName)s have \(legCount) legs")
        }
    }
    
    func testDictionary()
    {
        var numbersDic : Dictionary<String, String> = ["1" : "one", "2" : "two"];
        
        for (code, value) in numbersDic
        {
            println("numbersDic with \(code) : \(value)")
        }
    }
    
    func testSquare()
    {
        //test square
        let testSquare = Square(sideLength: 5.2, name: "my test sqare")
        testSquare.area()
        testSquare.simpleDescription()
        NSLog("sqare area is \(testSquare.area())", 0)
    }
    
    func testCircle()
    {
        //test circl
        let testCircle = Circle(radius:4, name:"my test circle")
        NSLog("circle area is : \(testCircle.area()), description: \(testCircle.simpleDescription())", 0)
    }
    
    func testTriangle()
    {
        // test equilate triangle
        let testTriangle: EquilateralTriangle = EquilateralTriangle(sideLength:5, name:"my test triangle")
        println("trianle sideLength: \(testTriangle.perimeter)")
        testTriangle.perimeter = 9.0
        println("trianle sideLength: \(testTriangle.sideLength)")
        
        var simpleClass = SimpleClass();
        simpleClass.adjust();
        let testSimple = simpleClass.simpleDescription;
    }
}
