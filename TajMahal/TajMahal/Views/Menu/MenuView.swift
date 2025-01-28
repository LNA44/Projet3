//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

//Présentation des plats sous forme de liste

struct MenuView: View {
	@Environment(\.presentationMode) var presentationMode
	let viewModel: ViewModel = ViewModel()
	var body: some View {
		List {
			Section (header: Text("Entrées")
				.textCase(nil)
				.font(.custom("PlusJakartaSans-Bold", size: 14))){
					ForEach(viewModel.apetizerArray, id:\.name ){ apetizer in
						NavigationLink (destination : DetailsView(dish:apetizer)){
							ZStack {
								LineViewMenu(dish: apetizer)
							}
							.frame(height: 110) // Fixe la hauteur globale de la ligne
							.padding(.vertical, 2) // Espacement entre les éléments de la liste
						}
						.buttonStyle(.plain)
						.listRowSeparator(.hidden) // Supprime les séparateurs entre les éléments
					}
				}
			Section (header: Text("Plats principaux")
				.textCase(nil)
				.font(.custom("PlusJakartaSans-Bold", size: 14))){
					ForEach(viewModel.mainCourseArray, id:\.name ){ mainCourse in
						
						NavigationLink (destination : DetailsView(dish:mainCourse)){
							ZStack {
								LineViewMenu(dish: mainCourse)
							}
							.frame(height: 110) // Fixe la hauteur globale de la ligne
							.padding(.vertical, 2) // Espacement entre les éléments de la liste
						}
						.listRowSeparator(.hidden) // Supprime les séparateurs entre les éléments
					}
				}
		}.listRowSpacing(20)
			.navigationBarBackButtonHidden(true) // Cache le bouton par défaut
			.navigationBarTitleDisplayMode(.inline) //Titre affiché en petit
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


//#Preview {
//    MenuView()
//}
