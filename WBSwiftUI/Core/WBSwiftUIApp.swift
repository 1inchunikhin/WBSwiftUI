//
//  WBSwiftUIApp.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 12.06.2024.
//

import SwiftUI

@main
struct WBSwiftUIApp: App {
	
	@StateObject var router: Router = .init()
	
    var body: some Scene {
        WindowGroup {
            TabBarView()
				.environmentObject(router)
        }
    }
}
