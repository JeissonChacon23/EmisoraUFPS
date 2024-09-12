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
            
            TabView{
                ProgramView()
                    .tabItem{
                        Image(systemName: "clock.fill")
                        Text("Programación")
                    }
                TeamView()
                    .tabItem{
                        Image(systemName: "person.2")
                        Text("Equipo")
                    }
                ProgramsView()
                    .tabItem{
                        Image(systemName: "calendar.circle")
                        Text("Programas")
                    }
            }
            .accentColor(Color(hex: 0xcf010b))
            VStack{
                Spacer()
                RadioPlayerView()
                HStack{
                }
                .frame(height: 35)
            }
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


/*
 TabView{
         ForEach(Tab.allCases, id: \.rawValue){ tab in
             Text(tab.rawValue)
                 .tag(tab)
                 .tabItem{
                     Image(systemName: tab.symbol)
                     Text(tab.rawValue)
                 }
         }
 }
 */


/*
 Text("Programación")
     .tabItem{
         Image(systemName: "clock.fill")
         Text("Programación")
     }
 
 Text("Equipo")
     .tabItem{
         Image(systemName: "person.circle.fill")
         Text("Equipo")
     }
 
 Text("Programas")
     .tabItem{
         Image(systemName: "list.bullet.rectangle.fill")
         Text("Programas")
     }
 */
