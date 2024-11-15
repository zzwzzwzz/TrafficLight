//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by Ziwen Zhou on 14/11/2024.
//

import SwiftUI

struct TrafficLightView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .bottom, spacing: 0) {
                ZStack {
                    UnevenRoundedRectangle(topLeadingRadius: 24, bottomLeadingRadius: 24, bottomTrailingRadius: 0, topTrailingRadius: 24)
                        .frame(width: 120, height: 300)
                    VStack{
                        LightView(lightColor: Color.red)
                        LightView(lightColor: Color.yellow)
                        LightView(lightColor: Color.green)
                    }
                }
                
                ZStack {
                    UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 24, topTrailingRadius: 24)
                        .frame(width: 120, height: 120)
                    
                    LightView(lightColor: Color.green)
                        .opacity(0.4)
                    
                    Image(systemName: "arrowshape.right.fill")
                        .font(.largeTitle)
                        .foregroundStyle(Color.green)
                }
            }
            
            Rectangle()
                .frame(width: 20, height: 240)
        }
    }
}

struct LightView: View { 
    var lightColor: Color = Color.green
    var lightSize: CGFloat = 80
    
    var body : some View {
        Circle()
            .frame(width: 80)
            .foregroundColor(lightColor)
    }
}

#Preview {
    TrafficLightView()
}
