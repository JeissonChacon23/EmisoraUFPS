//
//  ContentView.swift
//  EmisoraUFPS
//
//  Created by Jeisson Chacón on 11/09/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        ZStack{
            
        }
    }
}

#Preview {
    ContentView()
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 8) & 0xff) / 255,
            blue: Double(hex & 0xff) / 255,
            opacity: alpha
        )
    }
}



/*
 VStack{
     HStack{
         VStack{
             RadioPlayerView()
         }
         VStack{
         }
     }
     .frame(maxWidth: .infinity, maxHeight: 80)
     .background(Color(hex: 0xaa1916).opacity(0.9))
     .cornerRadius(30)
     Spacer()
 }
 */
