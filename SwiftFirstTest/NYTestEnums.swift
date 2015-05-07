//
//  NYTestEnums.swift
//  SwiftFirstTest
//
//  Created by nadia on 15-3-28.
//  Copyright (c) 2015年 叶媛媛. All rights reserved.
//

import Foundation

//enum Planet
//{
//    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Nepturn
//}

enum Planet:Int  // use toraw() to get the value 1
{
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Nepturn
}

enum Barcode
{
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

func testEnums ()
{
    var direction = Planet.Earth
    direction = .Saturn
    let earthsOrder = Planet.Earth.rawValue  // toRaw() 改成了rawValue
    
    let possiblePlanet = Planet(rawValue: 7)  // fromRaw(7)
    // possiblePlanet is of type Planet? and equals Planet.Uranus
    
    var productBarcode = Barcode.UPCA(8, 85909_51226, 3)
    productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
    
    switch productBarcode
    {
    case .UPCA(let numberSystem, let identifier, let check):
        println("UPC-A with value of \(numberSystem), \(identifier), \(check).")
    case .QRCode(let productCode):
        println("QR code with value of \(productCode).")
    }
    // prints "QR code with value of ABCDEFGHIJKLMNOP.”
}
