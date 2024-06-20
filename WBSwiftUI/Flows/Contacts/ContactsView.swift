//
//  ContactsView.swift
//  WBSwiftUI
//
//  Created by Николай Чунихин on 19.06.2024.
//

import SwiftUI

struct ContactsView: View {
	
	@EnvironmentObject var router: Router
	@State private var contacts: [Contact] = Mock.contacts
	@State private var addContactScreenIsPresented = false
	@State private var search: String = ""
	
	var body: some View {
		NavigationStack(path: $router.path) {
			VStack {
				
				SearchBar(text: $search, placeholder: "Поиск")
					.padding(.horizontal)
					.padding(.vertical, 4)
				Spacer()
				
				
				
			}
			.navigationBarTitleDisplayMode(.inline)
			.navigationBarBackButtonHidden(true)
			.toolbar {
				ToolbarItem(placement: .topBarLeading) {
					Text("Контакты")
						.subheading1()
						.padding(.leading, 8)
				}
				
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						addContactScreenIsPresented.toggle()
					} label: {
						Image(systemName: "plus")
					}
					.tint(.black)
					.padding(.trailing, 8)
				}
			}
			
		}
		.navigationDestination(for: Router.Route.self) { page in
			switch page {
			case .detailContact:
				Text("detail contact")
			}
			
		}
		.fullScreenCover(isPresented: $addContactScreenIsPresented, content: {
			Button {
				addContactScreenIsPresented.toggle()
			} label: {
				Text("Назад")
			}
		})
		
	}
}

#Preview {
	ContactsView()
		.environmentObject(Router())
}

fileprivate enum Mock {
	static let contacts: [Contact] = [
		.init(name: "Анастасия", lastname: "Иванова", image: "person.fil", date: Date()),
		.init(name: "Петя", lastname: nil, image: "person.fil", date: Date()),
		.init(name: "Маман", lastname: nil, image: "person.fil", date: Date()),
		.init(name: "Арбуз", lastname: "Дыни", image: "person.fil", date: Date()),
		.init(name: "Иван", lastname: "Иванов", image: nil, date: Date()),
		.init(name: "Лиса", lastname: "Алиса", image: nil, date: Date())
	]
}