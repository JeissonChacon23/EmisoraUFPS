//
//  Untitled.swift
//  EmisoraUFPS
//
//  Created by Jeisson Chacón on 11/09/24.
//

import SwiftUI
import AVKit
import AVFoundation

struct RadioPlayerView: View {
    @State private var isPlaying = false
    private var player: AVPlayer
    
    init() {
        // URL del stream de la emisora
        let url = URL(string: "https://apps.ufps.edu.co/emisoraufps")!
        self.player = AVPlayer(url: url)
        
        // Configurar la sesión de audio
        setupAudioSession()
    }
    
    var body: some View {
        ZStack{
            HStack{
                Spacer()
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                }
                Spacer()
                VStack{
                    Text("Radio UFPS 95.2")
                        .bold()
                }
                Spacer()
                VStack{
                    Button(action: {
                        if isPlaying {
                            // Detener reproducción
                            player.pause()
                        } else {
                            // Iniciar reproducción
                            player.play()
                        }
                        // Cambiar estado
                        isPlaying.toggle()
                    }) {
                        //Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                        Image(systemName: isPlaying ? "stop.fill" : "play.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isPlaying ? .black : .black)
                    }
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: 55)
            .background(isPlaying ? Color.white.opacity(0.9) : Color.white)
            .cornerRadius(20)
            .shadow(color: Color.white.opacity(0.1), radius: 10, x: 0, y: 10)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
            .padding()
            
            
            /*
            
            .background(Color.white.opacity(0.3))
            .shadow(color: Color.white.opacity(0), radius: 10, x: 10, y: 10)
            .cornerRadius(25)
            
            
            */
        }
    }
    // Configurar la sesión de audio para ignorar el modo silencio
    func setupAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Error al configurar la sesión de audio: \(error.localizedDescription)")
        }
    }
}

#Preview {
    RadioPlayerView()
}

/*
 import SwiftUI
 import AVKit
 import AVFoundation

 struct RadioPlayerView: View {
     @State private var isPlaying = false
     private var player: AVPlayer
     
     init() {
         // URL del stream de la emisora
         let url = URL(string: "https://apps.ufps.edu.co/emisoraufps")!
         self.player = AVPlayer(url: url)
         
         // Configurar la sesión de audio después de inicializar todas las propiedades
         setupAudioSession()
     }
     
     var body: some View {
         VStack {
             Button(action: {
                 if isPlaying {
                     // Detener reproducción
                     player.pause()
                 } else {
                     // Iniciar reproducción
                     player.play()
                 }
                 // Cambiar estado
                 isPlaying.toggle()
             }) {
                 Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                     .resizable()
                     .frame(width: 100, height: 100)
                     .foregroundColor(isPlaying ? .red : .green)
             }
             .padding()
         }
     }
     
     // Configurar la sesión de audio para ignorar el modo silencio
     func setupAudioSession() {
         do {
             try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
             try AVAudioSession.sharedInstance().setActive(true)
         } catch {
             print("Error al configurar la sesión de audio: \(error.localizedDescription)")
         }
     }
 }

 */
