//
//  Fonts.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 14.06.2024.
//

import SwiftUI

struct Heading1: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 32, weight: .bold))
	}
}

struct Heading2: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 24, weight: .bold))
	}
}

struct Subheading1: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 18, weight: .semibold))
	}
}

struct Subheading2: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 16, weight: .semibold))
	}
}

struct BodyText1: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 14, weight: .semibold))
	}
}

struct BodyText2: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 14, weight: .regular))
	}
}

struct Metadata1: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 12, weight: .regular))
	}
}

struct Metadata2: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 10, weight: .regular))
			.foregroundStyle(.gray)
	}
}

struct Metadata3: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(size: 10, weight: .semibold))
	}
}

extension View {
	func heading1() -> some View {
		self.modifier(Heading1())
	}
	
	func heading2() -> some View {
		self.modifier(Heading2())
	}
	
	func subheading1() -> some View {
		self.modifier(Subheading1())
	}
	
	func subheading2() -> some View {
		self.modifier(Subheading2())
	}
	
	func bodyText1() -> some View {
		self.modifier(BodyText1())
	}
	
	func bodyText2() -> some View {
		self.modifier(BodyText2())
	}
	
	func metadata1() -> some View {
		self.modifier(Metadata1())
	}
	
	func metadata2() -> some View {
		self.modifier(Metadata2())
	}
	
	func metadata3() -> some View {
		self.modifier(Metadata3())
	}
}
