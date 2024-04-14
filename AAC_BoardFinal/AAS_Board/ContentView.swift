//
//  ContentView.swift
//  AAS_Board
//
//  Created by Shivanth Kandasamy on 3/23/24.
//

import SwiftUI
                
//let LIST = ["Places", "Home", "Hospital", "Park", "School", "Store", "Actions", "Drink", "Eat", "Give", "Go To", "Like", "Play", "Read", "Run", "See", "Sleep", "Talk", "Think", "Walk", "Want", "Wear", "Write", "Pronouns", "He", "It", "Me", "She", "They", "We", "You", "Clothes", "Coat", "Dress", "Hoodie", "Jacket", "Jersey", "Pants", "Shirt", "Shorts", "Skirt", "Sweater", "Toiletries", "Comb", "Soap", "Tissue", "Toilet Paper", "Toothbrush", "Towel", "Food", "Apple", "Banana", "Blackberry", "Bread", "Burger", "Cake", "Cherries", "Chocolate", "Coconut", "Fries", "Grapes", "Ice Cream", "Juice", "Lemon", "Milk", "Orange", "Peach", "Pear", "Pizza", "Plum", "Raspberry", "Rice", "Sandwich", "Soup", "Strawberry", "Watermelon"]

let pronounList = ["He", "It", "Me", "She", "They", "We", "You"]
let numberofrecents: Int = 5

let foodList = ["Apple", "Banana", "Blackberry", "Bread", "Burger", "Cake", "Cherries", "Chocolate", "Coconut", "Fries", "Grapes", "Ice Cream", "Juice", "Lemon", "Milk", "Orange", "Peach", "Pear", "Pizza", "Plum", "Raspberry", "Rice", "Sandwich", "Soup", "Strawberry", "Watermelon"]

let clothesList = ["Coat", "Dress", "Hoodie", "Jacket", "Jersey", "Pants", "Shirt", "Shorts", "Skirt", "Sweater"]

let placesList = ["Home", "Hospital", "Park", "School", "Store"]

let actionsList = ["Drink", "Eat", "Give", "Go To", "Like", "Play", "Read", "Run", "See", "Sleep", "Talk", "Think", "Walk", "Want", "Wear", "Write"]

let dailyObjectsList = ["Comb", "Soap", "Tissue", "Toilet Paper", "Toothbrush", "Towel"]

//let CONNECTIONS = [["Home", "Hospital", "Park", "School", "Store"], // Places
//                   [], // Home
//                   [], // Hospital
//                   [], // Park
//                   [], // School
//                   [], // Store
//                   ["Drink", "Eat", "Give", "Go To", "Like", "Play", "Read", "Run", "See", "Sleep", "Talk", "Think", "Walk", "Want", "Wear", "Write"], // Actions
//                   ["It", "Juice", "Milk", "Soup"], // Drink
//                   ["It", "Apple", "Banana", "Blackberry", "Bread", "Burger", "Cake", "Cherries", "Chocolate", "Coconut", "Fries", "Grapes", "Ice Cream", "Lemon", "Orange", "Peach", "Pear", "Pizza", "Plum", "Raspberry", "Rice", "Sandwich", "Strawberry", "Watermelon"], //Eat
//                   ["It", "Clothes", "Food"], // Give
//                   ["Places", "Pronouns"], // Go To
//                   ["Places", "Clothes", "Food"], // Like
//                   ["Pronouns"], // Play
//                   [], // Read
//                   [], // Run
//                   ["Pronouns", "Clothes", "Toiletries", "Food"], // See
//                   [], // Sleep
//                   ["He", "It", "Me", "She", "They", "We", "You"], // Talk
//                   ["Pronouns", "Clothes", "Toiletries", "Food"], // Think
//                   ["Places"], // Walk
//                   ["Drink", "Eat", "Give", "Go To", "Play", "Read", "Run", "See", "Sleep", "Talk", "Walk", "Wear", "Write", "Toiletries", "Food"], // Want
//                   ["Coat", "Dress", "Hoodie", "Jacket", "Jersey", "Pants", "Shirt", "Shorts", "Skirt", "Sweater"], // Wear
//                   [], // Write
//                   ["He", "It", "Me", "She", "They", "We", "You"], // Pronouns
//                   ["Actions"], // He
//                   ["Actions"], // It
//                   ["Actions"], // Me
//                   ["Actions"], // She
//                   ["Actions"], // They
//                   ["Actions"], // We
//                   ["Actions"], // You
//                   ["Coat", "Dress", "Hoodie", "Jacket", "Jersey", "Pants", "Shirt", "Shorts", "Skirt", "Sweater"], //Clothes
//                   ["Store"], // Coat
//                   ["Store"], // Dress
//                   ["Store"], // Hoodie
//                   ["Store"], // Jacket
//                   ["Store"], // Jersey
//                   ["Store"], // Pants
//                   ["Store"], // Shirt
//                   ["Store"], // Shorts
//                   ["Store"], // Skirt
//                   ["Store"], // Sweater
//                   ["Comb", "Soap", "Tissue", "Toilet Paper", "Toothbrush", "Towel"], // Toiletries
//                   [], // Comb
//                   [], // Soap
//                   [], // Tissue
//                   [], // Toilet Paper
//                   [], // Toothbrush
//                   [], // Towel
//                   ["Apple", "Banana", "Blackberry", "Bread", "Burger", "Cake", "Cherries", "Chocolate", "Coconut", "Fries", "Grapes", "Ice Cream", "Juice", "Lemon", "Milk", "Orange", "Peach", "Pear", "Pizza", "Plum", "Raspberry", "Rice", "Sandwich", "Soup", "Strawberry", "Watermelon"], // Food
//                   ["Store"], // Apple
//                   ["Store"], // Banana
//                   ["Store"], // Blackberry
//                   ["Store"], // Bread
//                   ["Store"], // Burger
//                   ["Store"], // Cake
//                   ["Store"], // Cherries
//                   ["Store"], // Chocolate
//                   ["Store"], // Coconut
//                   ["Store"], // Fries
//                   ["Store"], // Grapes
//                   ["Store"], // Ice Cream
//                   ["Store"], // Juice
//                   ["Store"], // Lemon
//                   ["Store"], // Milk
//                   ["Store"], // Orange
//                   ["Store"], // Peach
//                   ["Store"], // Pear
//                   ["Store"], // Pizza
//                   ["Store"], // Plum
//                   ["Store"], // Raspberry
//                   ["Store"], // Rice
//                   ["Store"], // Sandwich
//                   ["Store"], // Soup
//                   ["Store"], // Strawberry
//                   ["Store"] // Watermelon
//                ]
//                   

////VERSION BEFORE MODS WORKING
//struct ContentView: View {
//    var body: some View {
//        
//        Text("Title Filler")
//            .font(.title)
//        
//        Text("Sentence Builder Filler")
//            .frame(maxWidth: 500, minHeight: 50)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//           //.cornerRadius(15)
//            .padding(15)
//        
//        Categories()
//        
//    }
//}
//
//
//
//struct Categories: View {
//    
//    @State var cats = ["Pronouns", "Actions", "Objects", "Food", "Locations", "Clothes"]
//    
//    let cols = 2 // must have AT LEAST 2 cols --> if not, code breaks
//    
//    var body: some View {
//        Text("Suggestions Filler")
//            .frame(maxWidth: .infinity, minHeight: 50)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//            .background(Color.white)
//            .padding(15)
//        
//        Catalog(tests: $cats, cols: cols)
//        
//        
////        Button {
////            tests = ["Asteya 0"]
////        } label: {
////            Text("Test Button")
////                .padding()
////                .background(Color.yellow)
////        }
////        .padding()
//
//    }
//    
//}
//
//
//struct Catalog: View {
//    
//    @Binding var tests: [String]
//    let cols: Int
//    
//    var body: some View {
//        
//        let rows = (tests.count + cols - 1) / cols // Calculate number of rows
//        
//        ScrollView {
//            LazyVGrid(columns: Array(repeating: GridItem(), count: cols), spacing: 10) {
//                ForEach(tests, id: \.self) { category in
//                    Button {
//                        buttonPressed(tests2: ["Asteya 00", "Neel 01"])
//                    } label: {
//                        VStack {
//                            Text(category)
//                            Image(category) // Assuming the image name is the same as the category name
//                                .resizable()
//                                .frame(width: 100, height: 100)
//                                .cornerRadius(10)
//                        }
//                        .padding()
//                        .background(Color.yellow)
//                        .cornerRadius(15)
//                    }
//                }
//            }
//            .padding()
//        }
//    }
//    
//    func buttonPressed(tests2: [String]) {
//        tests = tests2
//    }
//}

struct ContentView: View {
    @State private var selectedCategory: String?
    @State private var sentence: String = ""
    @State private var lastWord: String = ""
    var body: some View {
        VStack {
            Text("Title Filler")
                .font(.title)
            
            Text("\(sentence)")
                .frame(maxWidth: 500, minHeight: 50)
                .border(Color.black)
                .padding(15)
            
            Button(action: {
                do {
                    try  addQueryToRecents(to: URL(fileURLWithPath: "/Users/neel/Downloads/AAS_Board/recentqueries.txt"), line: sentence)
                    try addQueryToBank(to: URL(fileURLWithPath: "/Users/neel/Downloads/AAS_Board/allqueries.txt"), inputString: sentence)
                } catch {
                    print("file not found error")
                }
               
                
                sentence = ""
            }, label: {
                Text("Done")
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
            })
            
            Categories(selectedCategory: $selectedCategory)
            
            if let selectedCategory = selectedCategory {
                SubsetsView(subsets: subsetsForCategory(selectedCategory), sentence: $sentence, lastWord: $lastWord)
                    .padding()
            }
        }
        .navigationBarTitle("Category Selection")
    }
    
    func subsetsForCategory(_ category: String) -> [String] {
        switch category {
        case "Pronouns":
            return pronounList
        case "Food":
            return foodList
        case "Clothes":
            return clothesList
        case "Places":
            return placesList
        case "Actions":
            return actionsList
        case "Objects":
            return dailyObjectsList
        default:
            return []
        }
    }
}

struct Categories: View {
    @Binding var selectedCategory: String?
    @State var cats = ["Pronouns", "Actions", "Objects", "Food", "Places", "Clothes"]
    let cols = 2
    
    var body: some View {
        VStack {
            Text("Suggestions Filler")
                .frame(maxWidth: .infinity, minHeight: 50)
                .border(Color.black)
                .background(Color.white)
                .padding(15)
            
            Catalog(tests: $cats, cols: cols) { category in
                self.selectedCategory = category
            }
        }
    }
}

struct Catalog: View {
    @Binding var tests: [String]
    let cols: Int
    var onSelectCategory: (String) -> Void
    
    var body: some View {
        let rows = (tests.count + cols - 1) / cols
        
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: cols), spacing: 10) {
                ForEach(tests, id: \.self) { category in
                    Button {
                        onSelectCategory(category)
                    } label: {
                        VStack {
                            Text(category)
                            Image(category) // Assuming the image name is the same as the category name
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                        }
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(15)
                    }
                }
            }
            .padding()
        }
    }
}

struct SubsetsView: View {
    let subsets: [String]
    @Binding var sentence: String
    @Binding var lastWord: String
    var body: some View {
        VStack {
            Text("Subsets")
                .font(.title)
            
            ScrollView {
//                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
//                    ForEach(subsets, id: \.self) { subset in
//                        Text(subset)
//                        Image(subset)
//                            .resizable()
//                            .frame(width: 50, height: 50)
//                            .padding()
//                            .background(Color.yellow)
//                            .cornerRadius(10)
//                    }
//                }
//                .padding()
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(subsets, id: \.self) { subset in
                        Button {
                            if (lastWord != subset) {
                                sentence = sentence + " " + subset
                                lastWord = subset
                            }
                        } label: {
                            VStack {
                                Text(subset)
                                Image(subset) // Assuming the image name is the same as the category name
                                    .resizable()
                                    .frame(width:75, height: 75)
                                    .cornerRadius(10)
                            }
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(15)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

func seperateFileIntoLines(at fileURL: URL) throws {
    let line = try String(contentsOf: fileURL, encoding: .utf8).components(separatedBy: ". ") /*the seperator is also removed when doing this, we must append "." to every place where we removed it. */
    let formattedLine = line.enumerated().map { index, line in
           return (index < line.count - 1) ? "\(line)." : line
       }
    
    let newLine = formattedLine.joined(separator: "\n")
    try newLine.write(to: fileURL, atomically: true, encoding: .utf8)
    
}
func addQueryToRecents(to fileURL: URL, line: String) throws {
    let currentRecent = try String(contentsOf: fileURL, encoding: .utf8)
    var recents = currentRecent.components(separatedBy: .newlines)
    recents.insert(line, at: 0)
    if (recents.count > 5) {
        recents = Array(recents.prefix(numberofrecents))
    }
    let combinedRecents = recents.joined(separator: "\n") //combine into a single string so that we can perform operations. Currently seperated by lines.
    try combinedRecents.write(to: fileURL, atomically: true, encoding: .utf8) //write the updated information back into the original file
}
func addQueryToBank(to fileURL: URL, inputString: String) throws {
        let content: String
        do {
            content = try String(contentsOf: fileURL, encoding: .utf8)
        } catch {
            content = ""  //incase no line
        }
        var lines = content.components(separatedBy: .newlines)
        var stringCounts = [String: Int]()
        for line in lines {
            let parts = line.split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true)
            if parts.count == 2, let count = Int(parts[1]) {
                let string = String(parts[0])
                stringCounts[string] = count
            }
        }
        
        if let count = stringCounts[inputString] {
            stringCounts[inputString] = count + 1
        } else {
            stringCounts[inputString] = 1
        }
        
        lines = stringCounts.map { key, value in
            "\(key) \(value)"
        }
        
        let newContent = lines.joined(separator: "\n")
        
        try newContent.write(to: fileURL, atomically: true, encoding: .utf8)
}
func getQueries(from fileURL: URL, numberoflines n: Int) throws -> [String] {
    guard n > 0 else {return []} //need to have more than 1 lines
    let line = try String(contentsOf: fileURL, encoding: .utf8) //line of everything there
    let lines = line.components(separatedBy: .newlines) //individual lines for each query
    return Array(lines.prefix(n))
}



#Preview {
    ContentView()
}
