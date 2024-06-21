//
//  ContactRowView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 19.06.2024.
//

import SwiftUI

struct ContactRowView: View {
	
	let contact: Contact
	
	var body: some View {
		HStack {
			ZStack {
				getImage()
					.frame(width: 48, height: 48)
					.clipShape(RoundedRectangle(cornerRadius: 16.0))
					.overlay(
						RoundedRectangle(cornerRadius: 16.0)
							.stroke(Color.accent, lineWidth: contact.hasHistory ? 3 : 0)
							.frame(width: 56, height: 56)
							
					)
					.padding(.trailing, 4)
					
				
				if contact.hasNotification {
					Circle()
						.fill(Color.green)
						.stroke(Color.white, lineWidth: 3)
						.frame(width: 16, height: 16)
						.offset(x: 20, y: -20)
				}
			}
			VStack(alignment: .leading) {
				HStack {
					Text(contact.name)
					if let lastname = contact.lastname {
						Text(lastname)
					}
				}
				Text(getLastSeenText(date: contact.date))
									.font(.subheadline)
									.foregroundColor(.gray)
			}
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
				.font(.system(size: 24))
				.fontWeight(.bold)
				.frame(width: 48, height: 48)
				.background(RoundedRectangle(cornerRadius: 16.0).fill(Color.accent))
				.foregroundColor(.white)
		}
	}
	
	private func getInitials(name: String, lastname: String?) -> String {
		let firstInitial = name.first.map { String($0) } ?? ""
		let lastInitial = lastname?.first.map { String($0) } ?? ""
		return firstInitial + lastInitial
	}
	
	private func getLastSeenText(date: Date) -> String {
			let now = Date()
			let calendar = Calendar.current
			let components = calendar.dateComponents([.hour, .minute], from: date, to: now)
			
			if calendar.isDateInToday(date) {
				if let hours = components.hour, hours < 1 {
					return "online"
				} else if let hours = components.hour, hours < 24 {
					return "Last seen \(hours) hours ago"
				}
			} else if calendar.isDateInYesterday(date) {
				return "Last seen yesterday"
			}
			
			let formatter = DateFormatter()
			formatter.dateStyle = .short
			return "Last seen \(formatter.string(from: date))"
		}
}

#Preview {
	List {
		ContactRowView(
			contact: .init(
				name: "Имя",
				lastname: "Фамилия",
				image: "onboarding",
				date: Date(timeIntervalSinceNow: -11112),
				hasHistory: true,
				hasNotification: false
			)
		)
		
		ContactRowView(
			contact: .init(
				name: "Имя",
				lastname: "Фамилия",
				image: "onboarding",
				date: Date(timeIntervalSinceNow: -111112),
				hasHistory: true,
				hasNotification: false
			)
		)
		
		ContactRowView(
			contact: .init(
				name: "Имя",
				lastname: "Фамилия",
				image: nil,
				date: Date(),
				hasHistory: true,
				hasNotification: false
			)
		)
		
		ContactRowView(
			contact: .init(
				name: "Имя",
				lastname: nil,
				image: nil,
				date: Date(timeIntervalSinceNow: -1111102),
				hasHistory: true,
				hasNotification: false
			)
		)
	}
	
}
