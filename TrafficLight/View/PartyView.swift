//
//  PartyView.swift
//  Day1Coding
//
//  Created by Ziwen Zhou on 14/11/2024.
//

import SwiftUI

struct PartyView: View {
    @State var cupSays: String = "Hi,I'm a Cup!"
    
    func makeItdoSomething() {
        print("I have a bug?")
        print("I have a bug again?")
        print("Nooooooo!")
    }
    
    func makeCapSaySomethingElse() {
        cupSays = "I have been clicked!"
    }
    
    func makeItSay(_ word: String) {
        cupSays = word
    }
    
    func makeItSayPlain(_ word: String, _ name: String) {
        cupSays = word + name
    }
    
    func saysHi() -> String {
        return "Hi"
    }
    
    var body: some View {
//        CupView(initials: "HB", cupColor: Color.blue)
//        DescriptiveCupView(cup: PartyCup (initials:"SG", isGluten:true))
        
        VStack (spacing:15) {
            Text(cupSays)
            Button {
                // What it does
//                makeCapSaySomethingElse()
//                makeItSay(word: "I have been clicked!")
                makeItSayPlain("Hi, ", "Mary")
            } label: {
                DescriptiveCupView()
                    .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct CupView: View {
    var initials: String = "AS"
    var cupColor: Color = Color.red
    
    var body: some View {
        VStack (spacing: 0) {
            RoundedRectangle(cornerRadius: 999)
                .frame(width: 64, height: 10)
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 12, bottomTrailingRadius: 12, topTrailingRadius: 0)
                    .frame(width: 54, height: 72)
                    .foregroundColor(cupColor)
                Text(initials)
                    .fontWeight(.bold)
            }
        }
    }
}

struct DescriptiveCupView: View {

    var cup: PartyCup = PartyCup(initials: "AS", isGluten: false)
    
    var body: some View {
        VStack (spacing: 0) {
            RoundedRectangle(cornerRadius: 999)
                .frame(width: 64, height: 10)
                .foregroundColor(Color.white) // Default style of the cup head
            ZStack {
                UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 12, bottomTrailingRadius: 12, topTrailingRadius: 0)
                    .frame(width: 54, height: 72)
                    .foregroundStyle(cup.isGluten ? Color.red : Color.blue)
                Text(cup.initials)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    PartyView()
}
