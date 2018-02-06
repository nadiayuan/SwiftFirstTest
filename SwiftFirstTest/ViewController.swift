//
//  ViewController.swift
//  SwiftFirstTest
//
//  Created by nadia on 14-6-6.
//

import UIKit

class ViewController: UIViewController
{
    var labeltest:UILabel!
    var button1:UIButton!
    
    var textField:UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        testSomething()
        // Do any additional setup after loading the view, typically from a nib.
//        var addResult = printMathResult(addTwoInts, a: 3, b: 5)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testSomething()
    {
        let testObject: NYTestObject = NYTestObject()
        testObject.testObject()
    }
    
    func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int)
    {
        print("Result: \(mathFunction(a, b))")
    }
    
    func addTwoInts(a:Int, b:Int) -> Int
    {
        return a+b
    }
    
    func caculateSomethint()
    {
        // Dictionary key:string? value?
        let digitalNames = [0:"Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four"]
    }


}

