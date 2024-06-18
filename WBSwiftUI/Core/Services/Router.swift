//
//  Router.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 19.06.2024.
//

import Foundation

class Router: ObservableObject {
	
	@Published var selectedTab: Tab = .contacts
	@Published var path: [Route] = []
	
	enum Tab {
		case contacts, chats, profile
	}
	
	enum Route: Hashable {
		case detailContact
	}
}
