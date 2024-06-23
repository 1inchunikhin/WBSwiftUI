//
//  ContactEditorView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 22.06.2024.
//

import SwiftUI

struct ContactsInfoView: View {
	
	@State var contact: Contact
	
	var body: some View {
		VStack {
			getImage()
				.frame(width: 198, height: 198)
				.clipShape(Circle())
				.overlay(
					Circle()
						.stroke(Color.accent, lineWidth: 5)
						.frame(width: 200, height: 200)
					
				)
				.padding(.bottom, 16)
				.padding(.top, 120)
			
			HStack {
				Text(contact.name)
				
				if let surname = contact.lastname {
					Text(surname)
				}
			}
			.font(.system(size: 24, weight: .semibold))
			
			Text("+7(918)384-43-98")
				.font(.system(size: 16, weight: .regular))
				.foregroundStyle(.gray)
				.opacity(0.5)
				.padding(.bottom, 54)
			
			HStack() {
				
				SocialMediaButton(image: "twitter") {
					
				}
				.padding(.horizontal, 28)
				
				SocialMediaButton(image: "instagram") {
					
				}
				.padding(.horizontal, 28)
				
				SocialMediaButton(image: "in") {
					
				}
				.padding(.horizontal, 28)
				
				SocialMediaButton(image: "facebook") {
					
				}
				.padding(.horizontal, 28)
			}
			
			Spacer()
		}
	}
	
	@ViewBuilder
	private func getImage() -> some View {
		if let image = contact.image {
			Image(image)
				.resizable()
				.scaledToFit()
		} else {
			let initials = getInitials(name: contact.name, lastname: contact.lastname)
			Text(initials)
				.font(.system(size: 64))
				.fontWeight(.bold)
			//.frame(width: 48, height: 48)
			//.background(Color.accent)
				.foregroundColor(.accent)
		}
	}
	
	private func getInitials(name: String, lastname: String?) -> String {
		let firstInitial = name.first.map { String($0) } ?? ""
		let lastInitial = lastname?.first.map { String($0) } ?? ""
		return firstInitial + lastInitial
	}
}


