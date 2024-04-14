//
//  ContentView.swift
//  AACBoardApp
//
//  Created by Asteya Laxmanan on 4/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sentence: String = "Sentence Builder"
    
    var body: some View {
        
        var data = ["Hello", "Hi"]
        
        VStack {
            Text (
                "\(sentence)"
            ).frame(maxWidth: .infinity, minHeight: 50) .background(Color.blue)
            Spacer()
            HStack {
                Button(action: {
                    if (sentence.elementsEqual("Sentence Builder")) {
                        sentence = ""
                    }
                    
                    sentence = sentence + " \(data[0])"
                }, label: {
                    Text("\(data[0])")
                })
                
                Button(action: {
                    if (sentence.elementsEqual("Sentence Builder")) {
                        sentence = ""
                    }
                    
                    sentence = sentence + " \(data[1])"
                }, label: {
                    Text("\(data[1])")
                })
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
