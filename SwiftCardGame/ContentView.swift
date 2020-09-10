//
//  ContentView.swift
//  SwiftCardGame
//
//  Created by Safio on 2020/8/5.
//  Copyright © 2020 Safio. All rights reserved.
//

import SwiftUI
//fileprivate
//private
//internal
//public
struct ContentView: View {
    var body: some View {
       let stack =  HStack() {
            ForEach(0..<4) {index in
              carView(isFaceUp: false)
                
            }
        }
            .font(Font.largeTitle)
            .padding()
            .foregroundColor(Color.orange)
        printOC()
//        enumCharacter()
        return stack
    }
    
    func printOC() {
        OCFileTestViewController.printMeInSwift()
        OCFileTestViewController().nslog()
    }

}
struct carView: View {
    var isFaceUp : Bool
    
    var body: some View {
        ZStack() {
        if isFaceUp{
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth :3)
        Text("👻")
        }else{
            RoundedRectangle(cornerRadius: 10.0).fill()
            }

        }
    }
}
func enumCharacter() {
    var mulStringA = ""
    var mulStringB = String()
    if mulStringA == mulStringB {
        print("mulStringA---- ,\(mulStringA.isEmpty)")
    }
    
    mulStringA = "Horse"
    mulStringB += mulStringA
    print("mulStringB-----,\(mulStringB)")
    
    for character in mulStringB {
        print(character);
    }
    
    let catCharacter : [Character] = ["c","a","t","!"]
    let catString = String(catCharacter)
    print("catString-------,\(catString)")
    
    let isPrefix = catString.hasPrefix("ca")
    print("catString是否以‘ca’开头,\(isPrefix)")
    
    
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
