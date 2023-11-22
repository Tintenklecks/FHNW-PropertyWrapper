//
//  ContentView.swift
//  FHNW-PropertyWrapper
//
//  Created by Ingo Boehme on 21.12.22.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    @State private var stateVar = ""
    @GestureState var dragAmount = CGSize.zero


    @Truncating(maxLength: 10) var textVar = "Hallo Welt"

    var body: some View {
        VStack {
            Text(stateVar)
            Divider()
            Text(textVar)
            Divider()
            TextField("", text: $stateVar)
                .textFieldStyle(.roundedBorder)
                .onChange(of: stateVar) { newValue in
                    textVar = newValue
                }
            
//            Text("Good morning Teerak")
//                .padding(60)
//                .background(Color.red)
//                .offset(dragAmount)
//                .gesture(
//                    DragGesture()
//                        .updating($dragAmount) {
//                        value, state, transaction in
//                        state = value.translation
//                    }
//                )
            
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
