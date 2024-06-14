//
//  AdditionalTextView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 14.06.2024.
//

import SwiftUI

struct AdditionalTextView: View {
	var body: some View {
		VStack {
			Text(
				Texts.Onboarding.additionalText
			)
			
			
			HStack {
				Button {
					
				} label: {
					Text(
						Texts.Onboarding.privacyPolicy
					)
					.foregroundStyle(.accent)
				}
				
				Text(
					Texts.Onboarding.and
				)
				
				Button {
					
				} label: {
					Text(
						Texts.Onboarding.termsOfUse
					)
					.foregroundStyle(.accent)
				}
			}
		}
		.metadata2()
	}
}

#Preview {
	AdditionalTextView()
}
