//
//  NYTestClasses.swift
//  SwiftFirstTest
//
//  Created by nadia on 15-4-1.
//  Copyright (c) 2015年 叶媛媛. All rights reserved.
//

import Foundation


//数组在传值过程中是引用类型，如b＝a， 当a数组中的数值发生改变时，b中对应的数值也会发生改变
//当附加元素这一事件发生时（如数组长度发生变化）,Swift 会创建这个数组的一个拷贝
//字典在传值过程中是拷贝类型，如b＝a， 当a中key对应的数值发生改变时，b中对应的数值不会发生改变

struct Checkerboard
{
    let boardColors : [Bool] =
    {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for row in 1...10
        {
            for column in 1...10
            {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    
    func isBlackForRow(row: Int, column: Int) -> Bool
    {
        return boardColors[(row * 10) + column]
    }
}