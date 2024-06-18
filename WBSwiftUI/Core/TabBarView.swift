//
//  ContentView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 12.06.2024.
//

import SwiftUI

struct TabBarView: View {
	
	@EnvironmentObject var router: Router
	
	@AppStorage("onboarding") var isCompleted = false
	
    var body: some View {
		if isCompleted {
			TabView(selection: $router.selectedTab) {
				
				Text("Contacts")
					.tabItem {
						Image(systemName: "person")
					}
					.tag(Router.Tab.contacts)
				
				Text("Chats")
					.tabItem {
						Image(systemName: "person")
					}
					.tag(Router.Tab.chats)
				
				Text("Profile")
					.tabItem {
						Image(systemName: "person")
					}
					.tag(Router.Tab.profile)
			}
			.environmentObject(router)
		} else {
			OnboardingView()
		}
    }
}

#Preview {
    TabBarView()
		.environmentObject(Router())
}
