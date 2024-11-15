//
//  PictureView.swift
//  TrafficLight
//
//  Created by Ziwen Zhou on 15/11/2024.
//

import SwiftUI

struct PictureView: View {
    var body: some View {
        FingerView()
//        Text("Hello, Jupiter!")
//            .foregroundStyle(Color.white)
//            .padding()
//            .background(Color.blue)
//            .clipShape(UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 32, bottomTrailingRadius: 32, topTrailingRadius: 0))
    }
}

struct FingerView: View {
    var body: some View {
        Image("finger")
            .resizable()
            .scaledToFill()
//            .scaledToFit()
            .frame(width: 300, height: 400)
            .clipShape(Circle())
    }
}

#Preview {
    PictureView()
}
