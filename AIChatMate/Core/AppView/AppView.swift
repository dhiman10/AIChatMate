//
//  AppView.swift
//  AIChatMate
//
//  Created by Dhiman Das on 07.08.25.
//

import Foundation
import SwiftUI

struct AppView: View {
    
    @State var appstate: AppState = AppState()

    var body: some View {
        AppViewBuilder(
            showTabBar: appstate.showTabBar,
            tabBarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            })
        .environment(appstate)
    }
}

#Preview("AppView - Tabbar") {
    AppView(appstate: AppState(showTabBar: true))
}

#Preview("AppView - Onboarding") {
    AppView(appstate: AppState(showTabBar: false))
}
