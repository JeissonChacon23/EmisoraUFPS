//
//  LiveActivityExtension.swift
//  LiveActivityExtension
//
//  Created by Jeisson Chacón on 12/09/24.
//

import AppIntents

struct LiveActivityExtension: AppIntent {
    static var title: LocalizedStringResource { "LiveActivityExtension" }
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
