//
//  Tab.swift
//  EmisoraUFPS
//
//  Created by Jeisson Chacón on 11/09/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case programacion = "Programación"
    case equipo = "Equipo"
    case programas = "Programas"
    
    var symbol: String{
        switch self {
        case .programacion: "clock"
        case .equipo: "person.2"
        case .programas: "calendar.circle"
        }
    }
}
