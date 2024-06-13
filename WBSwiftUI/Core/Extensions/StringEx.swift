//
//  StringEx.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 14.06.2024.
//

import Foundation

extension String {
	var localized: String {
		return NSLocalizedString(self, comment: "")
	}
}
