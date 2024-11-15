//
//  CuppView.swift
//  CuppView
//
//  Created by Ziwen Zhou on 15/11/2024.
//

import SwiftUI

struct CuppView: View {
    var body: some View {
        ZStack {
            Rectangle()
            HStack (spacing: 20) {
                // Red Cup
                ZStack {
                    VStack(spacing: 0) {
                        CupTopView()
                        CupBodyView(bodyColor: Color.red)
                    }
                    FontView()
                }
                
                // Blue Cup
                ZStack {
                    VStack(spacing: 0) {
                        CupTopView()
                        CupBodyView(bodyColor: Color.blue)
                    }
                    FontView()
                }
            }
        }
    }
}

// Cup top lid
struct CupTopView: View {
    var body: some View {
        UnevenRoundedRectangle(topLeadingRadius: 25, bottomLeadingRadius: 25, bottomTrailingRadius: 25, topTrailingRadius: 25)
            .fill(Color.white)
            .frame(width: 120, height: 20)
    }
}

// Cup body
struct CupBodyView: View {
    var bodyColor: Color = Color.gray
    
    var body: some View {
        UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 25, bottomTrailingRadius: 25, topTrailingRadius: 0)
            .fill(bodyColor)
            .foregroundColor(bodyColor)
            .frame(width: 100, height: 120)
    }
}

struct FontView: View {
    var body: some View {
        Text("AS")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}

#Preview {
    CuppView()
}
