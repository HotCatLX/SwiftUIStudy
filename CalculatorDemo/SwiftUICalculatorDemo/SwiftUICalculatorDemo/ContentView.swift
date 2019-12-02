//
//  ContentView.swift
//  SwiftUICalculatorDemo
//
//  Created by suckerl on 2019/11/28.
//  Copyright © 2019 suckerl. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //模型数组
    let row: [CalculatorButtonItem] = [
              .number(7), .number(8), .number(9), .op(.multiply)
          ]
    
    var body: some View {
        
        
        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(number: item.title,
                                 fontSize: 40,
                                 textColor: .white,
                                 btnFrame: item.size,
                                 backgroundColor: Color(item.backgrounColorName)) {
                    print("ckick 1")
                }
            }
        }
        
        
        
// origin way
//        HStack {
//
//            CalculatorButton(number: "1",
//                             fontSize: 40,
//                             textColor: .white,
//                             btnFrame: CGSize(width: 88, height: 88),
//                             backgroundColor: Color("operatorBackground")) {
//                print("ckick 1")
//            }
//
//            CalculatorButton(number: "2",
//                              fontSize: 40,
//                              textColor: .white,
//                              btnFrame: CGSize(width: 88, height: 88),
//                              backgroundColor: Color("operatorBackground")) {
//                 print("ckick 2")
//             }
//
//            CalculatorButton(number: "3",
//                              fontSize: 40,
//                              textColor: .white,
//                              btnFrame: CGSize(width: 88, height: 88),
//                              backgroundColor: Color("operatorBackground")) {
//                 print("ckick 3")
//             }
//
//            CalculatorButton(number: "+",
//                                    fontSize: 40,
//                                    textColor: .white,
//                                    btnFrame: CGSize(width: 88, height: 88),
//                                    backgroundColor: Color("operatorBackground")) {
//                       print("ckick +")
//                   }
//
//
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct  CalculatorButton: View {
    let number: String
    let fontSize: CGFloat
    let textColor: Color
    let btnFrame: CGSize
    let backgroundColor: Color
    let btnAction: () -> Void

    var body: some View {
        Button(action: btnAction) {
            Text(number)
                .font(.system(size: fontSize))
                .foregroundColor(textColor)
                .frame(width: btnFrame.width, height: btnFrame.height)
                .background(backgroundColor)
                .cornerRadius(btnFrame.width/2)
        }
    }
}
