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
				
				ContactsView()
					.tabItem {
						if router.selectedTab == .contacts {
							Image("contacts.tab.fil")
						} else {
							Image("contacts.tab")
						}
					}
					.tag(Router.Tab.contacts)
				
				Text("Chats")
					.tabItem {
						if router.selectedTab == .chats {
							Image("chats.tab.fil")
						} else {
							Image("chats.tab")
						}
					}
					.tag(Router.Tab.chats)
				
				Text("Profile")
					.tabItem {
						if router.selectedTab == .profile {
							Image("profile.tab.fil")
						} else {
							Image("profile.tab")
						}
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
