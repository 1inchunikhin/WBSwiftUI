//
//  SocialMediaButton.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 24.06.2024.
//

import SwiftUI

struct SocialMediaButton: View {
	
	let image: String
	let action: () -> Void // Добавляем замыкание action
	
    var body: some View {
		
		Button {
			action()
		} label: {
			Image(image)
				.resizable()
				.frame(width: 20, height: 20)
				.overlay {
					RoundedRectangle(cornerRadius: 25.0)
						.stroke(Color.accent, style: .init(lineWidth: 2))
						.frame(width: 70, height: 40)
				}
		}

        
    }
}

#Preview {
	SocialMediaButton(image: "in") {
		
	}
}
