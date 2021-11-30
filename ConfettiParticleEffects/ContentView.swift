//
//  ContentView.swift
//  ConfettiParticleEffects
//
//  Created by aprillee on 2021/11/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .leading, endPoint: .trailing)
                .frame(width: 300, height: 100)
                .mask {
                    Text("Congratulation!")
                        .font(.title)
                }
            
            Image(systemName: "snowflake")
                .foregroundColor(.blue)
                .modifier(ParticlesModifier())
            
            Image(systemName: "pawprint.fill")
                .foregroundColor(.red)
                .modifier(ParticlesModifier())
                .offset(x: 60, y: 70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
