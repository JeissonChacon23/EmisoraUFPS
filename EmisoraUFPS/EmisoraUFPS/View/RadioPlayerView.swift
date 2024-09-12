//
//  Untitled.swift
//  EmisoraUFPS
//
//  Created by Jeisson Chacón on 11/09/24.
//

import SwiftUI
import AVKit

struct RadioPlayerView: View {
    @State private var isPlaying = false
    private var player: AVPlayer
    
    init() {
        // URL del stream de la emisora
        let url = URL(string: "https://apps.ufps.edu.co/emisoraufps")!
        self.player = AVPlayer(url: url)
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
                //Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                Image(systemName: isPlaying ? "stop.fill" : "play.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(isPlaying ? .red : .green)
            }
            .padding()
        }
    }
}
