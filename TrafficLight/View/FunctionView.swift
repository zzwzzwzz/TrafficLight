//
//  FunctionView.swift
//  TrafficLight
//
//  Created by Ziwen Zhou on 15/11/2024.
//

import SwiftUI

struct FunctionView: View {
    @State var message: String = "Hello, World!"
    
    func changeText() {
        message = "Hello, SwiftUI!"
    }
    
    func changeTextTo (word: String) {
        message = word
    }
    
    var body: some View {
        Text(message)
            .font(.largeTitle)
        Button {
            changeTextTo(word: "Hey, Delilah")
        } label: {
            Text("Change Text")
                .foregroundColor(Color.orange)
                .buttonStyle(PlainButtonStyle())
        }
    }
}

#Preview {
    FunctionView()
}
