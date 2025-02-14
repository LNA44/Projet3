//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct ViewMenu: View {
	@Environment(\.presentationMode) var presentationMode
	let viewModel: ViewModel = ViewModel()
	var body: some View {
		List {
			Section (header: Text("Entrées")
				.textCase(nil)){
					ForEach(viewModel.apetizerArray, id:\.name ){ apetizer in
						NavigationLink (destination : ViewDetails(dish:apetizer)){
							RawViewMenu(dish: apetizer)
						}
					}
				}.padding(.bottom, 5)
				.listRowInsets(EdgeInsets(top:5, leading:5, bottom: 5, trailing: 5))
			Section (header: Text("Plats principaux")
				.textCase(nil)){
					ForEach(viewModel.mainCourseArray, id:\.name ){ mainCourse in
						NavigationLink (destination : ViewDetails(dish:mainCourse)){
							RawViewMenu(dish: mainCourse)
						}
					}
				}.padding(.bottom, 5)
				.listRowInsets(EdgeInsets(top:5, leading:5, bottom: 5, trailing: 5))
		}
		.font(.custom("PlusJakartaSans-Bold", size: 14))
		.foregroundStyle(.darkgray)
		.listRowSpacing(15)
		.listRowSeparator(.hidden)
		.navigationBarBackButtonHidden(true)
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .navigationBarLeading) {
				Button(action: {
					presentationMode.wrappedValue.dismiss()
				}) {
					Image("Back")
						.foregroundColor(.blue)
				}
			}
			ToolbarItem(placement: .principal) {
				Text ("Menu")
					.font(.system(size:24, weight:.bold))
			}
		}
		
	}
	
}


#Preview {
    ViewMenu()
}
