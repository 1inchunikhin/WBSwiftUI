//
//  OnboardingView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 12.06.2024.
//

import SwiftUI

struct OnboardingView: View {
	
	@State var isPresentSheet = false
	@AppStorage("onboarding") var isCompleted = false
	
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
				isCompleted.toggle()
			}
			.padding(.horizontal, 24)
			.padding(.bottom, 32)
		}
    }
}

#Preview {
    OnboardingView()
}
