//
//  ContentView.swift
//  AAS_Board
//
//  Created by Shivanth Kandasamy on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Title Filler")
            .font(.title)
        
        Text("Sentence Builder Filler")
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(Color.blue)
        
        Categories()
        
    }
}

struct Categories: View {
    
    @State var tests = ["Asteya 0", "Neel 1", "Gaurwik 2", "Shiv 3", "Ani 4", "Ayaan 5", "Reya 6"]
    let cols = 2 // must have AT LEAST 2 cols --> if not, code breaks
    
    var body: some View {
        Text("Suggestions Filler")
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(Color.green)

        Catalog(tests: $tests, cols: cols)
    }
}

struct Catalog: View {
    
    @Environment(\.presentationMode) var mode
    @Binding var tests: [String]
    let cols: Int
    
    var body: some View {
        
        @State var rows = ((tests.indices.last ?? 0) + 1) / cols
        @State var lastRow = ((tests.indices.last ?? 0) + 1) % cols
        
        ScrollView {
            
            HStack{
                ForEach(0..<cols, id: \.self) { col in
                    LazyVStack {
                        ForEach(0..<rows, id: \.self) { row in
                            ZStack {
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.red)
                                    .frame(width: 150, height: 100)
                                    .padding()
                                Text(tests[row * 2 + col])
                            }
                        }
                    
                    }
                }
                
            }
            HStack{
                ForEach(0..<lastRow, id: \.self) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.red)
                            .frame(width: 150, height: 100)
                            .padding()
                        Text(tests[rows * cols + index])
                    }
                }
            }
            
            Button {
                tests = ["Asteya 0"]
            } label: {
                Text("Test Button")
                    .padding()
                    .background(Color.yellow)
            }

        }
        
    
    }
}

#Preview {
    ContentView()
}
