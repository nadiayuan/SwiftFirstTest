//
//  NYShape.swift
//  SwiftFirstTest
//
//  Created by nadia on 14-8-7.
//

import Foundation

let PI = 3.1415926

class Shape
{
    
    var numberOfSizes: Int = 0
    var name: String
    
    init(name: String)
    {
        self.name = name
    }
    
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSizes) sides"
    }
}

class Square: Shape
{
    var sideLength: Double
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSizes = 4
    }
    
    func area() -> Double
    {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String
    {
        return "A square with sides with sides of length: \(numberOfSizes)"
    }
}

class Circle: Shape
{
    var radius: Double
    init(radius: Double, name: String)
    {
        self.radius = radius
        super.init(name: name)
        numberOfSizes = 1
    }
    func area() -> Double
    {
        return 3.1415926 * radius * radius
    }
    
    override func simpleDescription() -> String
    {
        return "A circle with one sides with radius: \(radius)"
    }
}

class EquilateralTriangle: Shape
{
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSizes = 3
    }
    
    var perimeter: Double
    {
    get
    {
        return 3.0 * sideLength
    }
    set
    {
        sideLength = newValue / 3.0
    }
    }
    
    override func simpleDescription() -> String
    {
        return "An equilateral triangle with sides of length: \(sideLength)"
    }
}

protocol ExampleProtocol
{
    var simpleDescription : String { get }
    mutating func adjust()
}

class SimpleClass : ExampleProtocol
{
    var simpleDescription : String = "A very simple class.";
    func adjust()
    {
        simpleDescription += " Now completely adjust."
    }
}
