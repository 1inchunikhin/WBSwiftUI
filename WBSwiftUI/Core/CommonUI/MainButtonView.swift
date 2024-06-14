//
//  MainButtonView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 14.06.2024.
//

import SwiftUI

struct MainButtonView: View {
	
	let text: String
	let action: () -> Void // Добавляем замыкание action
	
	var body: some View {
		Button(action: action) {
			Text(text)
				.foregroundStyle(.white)
				.padding(.vertical)
				.frame(maxWidth: .infinity)
				.subheading2()
		}
		.background(.accent)
		.cornerRadius(30)
		
	}
}
#Preview {
	MainButtonView(text: "Нажми меня", action: {
		print("Button tapped")
	})
}
