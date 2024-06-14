//
//  OnboardingView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 12.06.2024.
//

import SwiftUI

struct OnboardingView: View {
	
	@State var isPresentSheet = false
	
    var body: some View {
		VStack {
			Spacer()
				
			Image(
				Images.Onboarding.main
			)
			
			Spacer()
			
			Text(
				Texts.Onboarding.mainTitle
			)
			.heading2()
			.multilineTextAlignment(
				.center
			)
			
			Spacer()
			
			AdditionalTextView()
				.padding(.bottom, 4)
			
			MainButtonView(
				text: Texts.Onboarding.buttonTitle
			) {
				isPresentSheet = true
			}
			.padding(.horizontal, 24)
			.padding(.bottom, 32)
			.sheet(isPresented: $isPresentSheet, content: {
				Button {
					isPresentSheet = false
				} label: {
					Text("dismiss")
				}

			})
		}
    }
}

#Preview {
    OnboardingView()
}
