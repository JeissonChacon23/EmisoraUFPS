//
//  LiveActivityExtensionBundle.swift
//  LiveActivityExtension
//
//  Created by Jeisson Chacón on 12/09/24.
//

import WidgetKit
import SwiftUI

@main
struct LiveActivityExtensionBundle: WidgetBundle {
    var body: some Widget {
        LiveActivityExtension()
        LiveActivityExtensionControl()
        LiveActivityExtensionLiveActivity()
    }
}
