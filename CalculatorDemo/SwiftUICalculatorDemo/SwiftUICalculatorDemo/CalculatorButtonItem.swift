//
//  CalculatorButtonItem.swift
//  SwiftUICalculatorDemo
//
//  Created by suckerl on 2019/12/3.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit

enum CalculatorButtonItem: Hashable {

    //内部枚举
    enum Operation: String {
        case add = "+"
        case minus = "-"
        case multiply = "*"
        case divide = "/"
        case equal = "="
    }
    
    enum Command: String {
        case clear = "AC"
        case sign = "+/-"
        case percent = "%"
    }
    
    
    case number(Int)
    case dot
    case op(Operation)
    case com(Command)
}


extension CalculatorButtonItem {
   
    var title: String {
        switch self {
        case .number(let number):
            return String(number)

        case .dot:
            return "."
           
        case .op(let op):
            return op.rawValue

            
        case .com(let com):
            return com.rawValue
        }
    }
    
    
    var size: CGSize {
        CGSize(width: 88, height: 88)
    }
       
       
    var backgrounColorName: String {
        switch self {
            case .number, .dot: return "digitBackground"
            case .op: return "operatorBackground"
            case .com: return "commandBackground"
        }
    }
    
    
}
